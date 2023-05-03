import 'dart:ui';

import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      //  color: Colors.amber,
      child:
          // Bloc du tweet
          Flex(
        direction: Axis.vertical,
        children: [
          Flex(
            direction: Axis.horizontal,
            children: [
              // PHOTO
              Expanded(
                flex: 2, // 20%
                child: Container(
                    // lib\resources\images\cat.jpg
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
                  color: Colors.blue,
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
                                child: Text("LaCrevette@Chocolatine"),
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
                            children: const [
                              Expanded(
                                  child: Text(
                                "Répondre",
                                textAlign: TextAlign.center,
                              )),
                              Expanded(
                                  child: Text("Retweet",
                                      textAlign: TextAlign.center)),
                              Expanded(
                                  child: Text("Favoris",
                                      textAlign: TextAlign.center))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
              // FOOTER TWEET
            ],
          ),
        ],
      ),
    ));
  }
}
