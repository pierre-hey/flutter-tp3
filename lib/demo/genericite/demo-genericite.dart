class Person {}
// Crochet dans objet, tout ce qui va être remplacé dans la classe
// Généricité

class UnObjet<T> {
  void faireUnTruc(T monParam) {}
}

class UnAutreObjet extends UnObjet<Person> {}

//----------------------------------------------------

void main() {
  ArticleManager articleManager = ArticleManager();

  EniResponse response = articleManager.getArticle(1);
  // Log
  print('Code : ${response.codeResponse} - ${response.messageResponse}');

  // la data
  print('Article : ${response.data.title}');
}

//----------------------------------------------------

class Article {
  String? title;
  Article({this.title});
}

class ArticleManager {
  EniResponse getArticle(int id) {
    // prepare la réponse
    EniResponse response = EniResponse.defaultResponse<Article>();
    // --- du code

    Article article = Article(title: "toto");

    response.setResponse("200", "Article getted with success", article);

    return response;
  }
}

class EniResponse<T> {
  late String codeResponse;
  late String messageResponse;

  T? data;

  void setResponse(String code, String message, T newData) {
    codeResponse = code;
    messageResponse = message;
    data = newData;
  }

  // Utilitaire
  static EniResponse defaultResponse<T>() {
    EniResponse<T> response = EniResponse<T>();
    response.codeResponse = "200";
    response.messageResponse = "";
    return response;
  }
}
