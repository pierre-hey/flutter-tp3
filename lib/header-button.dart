import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  String label;

  HeaderButton(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Text(label,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white)));
  }
}
