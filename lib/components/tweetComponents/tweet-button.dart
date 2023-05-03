
import 'package:flutter/material.dart';

class TweetButton extends StatelessWidget {
  // String label;

  String imageURI;

  TweetButton(this.imageURI, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: IconButton(
      icon: Image.asset(
        imageURI,
        height: 25.0,
        width: 25.0,
      ),
      onPressed: () => {print("clic")},
    ));
  }
}
