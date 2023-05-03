import 'package:eni_demo/footer-button.dart';
import 'package:flutter/material.dart';

class FooterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Flex(direction: Axis.horizontal, children: [
        FooterButton("Fil"),
        FooterButton("Notification"),
        FooterButton("Messages"),
        FooterButton("Moi"),
      ]),
    );
  }
}
