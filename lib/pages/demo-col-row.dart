import 'package:flutter/material.dart';

class DemoColRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Demo Module 3'),
        ),
        body: Row(
          children: [
            Column(
              children: const [Text("[Row1_Col1]")],
            ),
            Column(
              children: const [Text("[Row1_Col2]")],
            ),
            Column(
              children: [
                Row(
                  children: const [
                    Text("[Row1_Col3 - Row1]"),
                  ],
                ),
                Row(
                  children: const [Text("[Row1_Col3 - Row2]")],
                )
              ],
            ),
            Column(
              children: const [Text("[Row1_Col4]")],
            )
          ],
        ));
  }

  testButton() {
    print("WOW c'est un bouton sur lequel on clique omg");
  }
}
