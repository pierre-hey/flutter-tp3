import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DemoApiPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DemoApiPageState();
  }
}

class DemoApiPageState extends State<DemoApiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Demo Module 3'),
        ),
        body: Flex(
          direction: Axis.vertical,
          children: [
            ElevatedButton(
                onPressed: () => {callApi()},
                child: const Text("Appeler l'API"))
          ],
        ));
  }

  Future<void> callApi() async {
    // Récupère la réponse de la requête HTTP
    var response = await http.get(Uri.parse(
        "https://raw.githubusercontent.com/pierre-hey/flutter-tp3/main/lib/apimock/get-articles.json"));

    // Si correct
    if (response.statusCode == 200) {
      // Initialiser le decoder json
      const JsonDecoder decoder = JsonDecoder();
      // Je map ma réponse HTTP en JSON
      List<dynamic> jsonList = decoder.convert(response.body);
      //Map<String, dynamic> json = decoder.convert(response.body);
      // Transformer le JSON en objet
      print(jsonList);
    }
  }
}
