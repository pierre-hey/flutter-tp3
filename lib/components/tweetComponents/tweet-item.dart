import 'dart:convert';

import 'package:eni_demo/components/tweetComponents/tweet-button.dart';
import 'package:eni_demo/dto/tweet-dto.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/*
class RandomCatPhoto extends StatefulWidget {
  @override
  _RandomCatPhotoState createState() => _RandomCatPhotoState();
}

class _RandomCatPhotoState extends State<RandomCatPhoto> {
  String? _imageUrl;

  Future<void> _fetchCatPhoto() async {
    final response =
        await http.get(Uri.parse('https://api.thecatapi.com/v1/images/search'));
    final data = jsonDecode(response.body);
    setState(() {
      _imageUrl = data[0]['url'];
    });
  }

  @override
  void initState() {
    super.initState();
    _fetchCatPhoto();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      width: 10.0,
      child: _imageUrl == null
          ? CircularProgressIndicator()
          : Image.network(
              _imageUrl!,
              // fit: BoxFit.fill,
            ),
    );
  }
}

*/
class TweetItem extends StatelessWidget {
  TweetDto tweet;
  TweetItem(this.tweet, {super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        Flex(
          direction: Axis.horizontal,
          children: [
            // PHOTO
            Expanded(
              flex: 2, // 20%
              // child: RandomCatPhoto(),
              child: SizedBox(
                // height: 120.0,
                // width: 120.0,
                child: Image.network(
                  tweet.img!,
                  fit: BoxFit.fill,
                ),

                /*decoration: const BoxDecoration(
                    image: DecorationImage(
                
                      image: AssetImage("assets/images/cat.jpg"),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  )*/
              ),
            ),
            // CONTENT
            Expanded(
              flex: 8, // 80%
              child: Container(
                color: const Color.fromARGB(255, 215, 233, 241),
                child: Flex(direction: Axis.vertical, children: [
                  Flex(
                    direction: Axis.vertical,
                    children: [
                      // 1er ligne (author - time)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: [
                            // Author
                            Expanded(
                              // child: Text("LeVieux@Grumpy"),
                              child: Text(tweet.author!),
                            ),
                            // Time
                            const Text("50s")
                          ],
                        ),
                      ),
                      //Message du tweet
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        //child: Text(
                        //      "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam"),
                        child: Text(tweet.message!),
                      ),
                      // FOOTER
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Flex(
                          direction: Axis.horizontal,
                          // Mes 3 boutons
                          children: [
                            TweetButton("assets/icons/reply.png"),
                            TweetButton("assets/icons/retweet.png"),
                            TweetButton("assets/icons/favorite.png"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

void wait(int? sec) async {
  await Future<void>.delayed(Duration(seconds: sec!));
}

class TweetItemFul extends StatefulWidget {
  @override
  State<TweetItemFul> createState() {
    return TweetItemPageState();
  }
}

class TweetItemPageState extends State<TweetItemFul> {
  List<TweetDto> tweets = [];

  void callApi() async {
    var response = await http.get(Uri.parse(
        "https://raw.githubusercontent.com/pierre-hey/flutter-tp3/main/lib/apimock/api-tweet-mock.json"));

    if (response.statusCode == 200) {
      const JsonDecoder decoder = JsonDecoder();
      Map<String, dynamic> json = decoder.convert(response.body);
      var tweetsJson = (json['tweets'] as List);

      List<TweetDto> tweetToMap = [];
      for (var tweetJson in tweetsJson) {
        tweetToMap.add(TweetDto.fromJson(tweetJson));
      }
      setState(() {
        tweets = tweetToMap;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    //callApi();
    return Expanded(
        child: ListView.builder(
            itemCount: tweets.length,
            itemBuilder: (BuildContext context, int index) {
              return TweetItem(tweets[index]);
            }));
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => callApi());
  }
}
