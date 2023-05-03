import 'package:flutter/material.dart';

class DemoListView extends StatelessWidget {
  var lists = ["Titi", "Toto", "Tata"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Demo Module 3'),
        ),
        body: ListView.builder(
          itemCount: lists.length,
          itemBuilder: (BuildContext context, int index) {
            return MyLineItem(lists[index]);
            //return Text(lists[index]);
          },
        ));
  }

  testButton() {
    print("WOW c'est un bouton sur lequel on clique omg");
  }
}

class MyLineItem extends StatelessWidget {
  String label;
  MyLineItem(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 27, 248, 27),
      child: Text(label),
    );
  }
}
