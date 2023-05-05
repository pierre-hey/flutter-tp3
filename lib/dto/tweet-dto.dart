class TweetDto {
  int? id;
  String? author;
  String? message;
  String? img;

  TweetDto({this.id, this.author, this.message, this.img});

  static TweetDto fromJson(Map<String, dynamic> json) {
    return TweetDto(
        id: json['id'],
        author: json['author'],
        message: json['message'],
        img: json['img']);
  }
}
