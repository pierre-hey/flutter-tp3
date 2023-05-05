import 'dart:ui';
import 'package:eni_demo/components/tweetComponents/tweet-item.dart';
import 'package:flutter/material.dart';
import 'package:eni_demo/components/form/form-login.dart';

class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Flex(
            //  color: Colors.amber,
            direction: Axis.vertical,
            // Tout le contenu
            children: [
          // FORMULAIRE CONNEXION
          //Stateless
          //FormLogin(),
          // Statefull
          FormLoginStateFull(),
          // Bloc du tweet
          //  TweetItem(),
          TweetItemFul()
        ]));
  }
}
