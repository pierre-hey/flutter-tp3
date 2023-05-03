import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget {
  String label;

  FooterButton(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Text(label,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.grey)));
  }
}
