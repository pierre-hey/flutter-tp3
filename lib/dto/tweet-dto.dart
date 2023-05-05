class TweetDto {
  int? id;
  String? author;
  String? message;

  TweetDto({this.id, this.author, this.message});

  static TweetDto fromJson(Map<String, dynamic> json) {
    return TweetDto(
        id: json['id'], author: json['author'], message: json['message']);
  }
}
