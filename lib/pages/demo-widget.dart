import 'package:flutter/material.dart';

class DemoWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Module 3'),
      ),
      body: Flex(
        direction: Axis.vertical,
        children: [
          Image.network(
              "https://i.guim.co.uk/img/media/26392d05302e02f7bf4eb143bb84c8097d09144b/446_167_3683_2210/master/3683.jpg?width=1200&quality=85&auto=format&fit=max&s=a52bbe202f57ac0f5ff7f47166906403"),
          //   Image.asset("assets/images/cat.jpg", height: 200.0, width: 200.0),
          /*  Image.asset(
            "assets/images/cat2.jpg",
            height: 125.0,
            width: 125.0,
          ),*/
          Image.asset(
            "assets/images/cat3.gif",
          ),
          const TextField(
            decoration: InputDecoration(
                labelText: "Email", hintText: "email@example.com"),
          ),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => testButton(), child: Text("Mon Button")),
          )
        ],
      ),
    );
  }

  testButton() {
    print("WOW c'est un bouton sur lequel on clique omg");
  }
}
