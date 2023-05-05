import 'dart:convert';

import 'package:eni_demo/demo/demo-api/article.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

// Ma ligne widget d'article
class ArticleItemView extends StatelessWidget {
  // Un article dans la ligne
  Article article;

  ArticleItemView(this.article, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFDCE5E3),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text('Id : ${article.id} - ${article.title}'),
      ),
    );
  }
}

// Statefull widget
class DemoApiPage extends StatefulWidget {
  @override
  State<DemoApiPage> createState() {
    return DemiApiPageState();
  }
}

class DemiApiPageState extends State<DemoApiPage> {
  List<Article> articles = [];

  void callApi() async {
    // Affiche une dialog box
    ProgressDialog pd = ProgressDialog(context: context);
    pd.show(msg: 'Articles en cours de chargement...');

    // Simule du temps de chargement
    await Future<void>.delayed(const Duration(seconds: 1));

    // Récupère la réponse de la requête HTTP
    var response = await http.get(Uri.parse(
        "https://raw.githubusercontent.com/Chocolaterie/EniFlutterHCDA091/master/api/get-articles.json"));

    // Si correcte
    if (response.statusCode == 200) {
      // Initialiser le décoder JSON
      const JsonDecoder decoder = JsonDecoder();

      // Je map ma réponse HTTP en JSON
      Map<String, dynamic> json = decoder.convert(response.body);

      // Transformer ce JSON en article

      var articlesJson = (json['articles'] as List);

      // Pour chaque iteration dans le json -> ajouter dans la liste un article
      List<Article> articlesToMap = [];
      for (var articleJson in articlesJson) {
        articlesToMap.add(Article.fromJson(articleJson));
      }

      // Mettre à jour l'ecran avec les articles récupérés
      setState(() {
        articles = articlesToMap;

        // Fermer la dialog box
        pd.close();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo API")),
      // ListView
      body: Flex(
        direction: Axis.vertical,
        children: [
          // Mon bouton call API
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    callApi();
                  },
                  child: const Text("Appeler l'API")),
            ),
          ),

          // Ma ListView d'article
          Expanded(
            child: ListView.builder(
                itemCount: articles.length,
                itemBuilder: (BuildContext context, int index) {
                  return ArticleItemView(articles[index]);
                }),
          ),
        ],
      ),
    );
  }
}
