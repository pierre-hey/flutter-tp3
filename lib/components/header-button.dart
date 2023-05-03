import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  String imageURI;

  HeaderButton(this.imageURI, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: IconButton(
      icon: Image.asset(imageURI),
      onPressed: () => {print("clic")},
    ));
  }
}
