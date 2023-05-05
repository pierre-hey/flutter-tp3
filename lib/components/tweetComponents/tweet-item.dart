import 'dart:convert';

import 'package:eni_demo/components/tweetComponents/tweet-button.dart';
import 'package:eni_demo/dto/tweet-dto.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
              child: Container(
                height: 120.0,
                width: 120.0,
                child: Image.network("https://cataas.com/cat"),

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
                color: Color.fromARGB(255, 215, 233, 241),
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
                            Text("50s")
                          ],
                        ),
                      ),
                      //Message du tweet
                      Padding(
                        padding: EdgeInsets.all(8.0),
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
        "https://raw.githubusercontent.com/Chocolaterie/EniFlutterHCDA091/master/api/tweets.json"));

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
    callApi();
    return Expanded(
        child: ListView.builder(
            itemCount: tweets.length,
            itemBuilder: (BuildContext context, int index) {
              return TweetItem(tweets[index]);
            }));
  }
}
