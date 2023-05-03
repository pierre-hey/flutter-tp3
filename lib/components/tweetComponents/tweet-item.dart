import 'package:eni_demo/components/tweetComponents/tweet-button.dart';
import 'package:flutter/material.dart';

class TweetItem extends StatelessWidget {
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
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/cat.jpg"),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  )),
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
                          children: const [
                            // Author
                            Expanded(
                              child: Text("LeVieux@Grumpy"),
                            ),
                            // Time
                            Text("50s")
                          ],
                        ),
                      ),
                      //Message du tweet
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                            "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam"),
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
