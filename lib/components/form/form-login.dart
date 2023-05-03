import 'package:eni_demo/components/tweetComponents/switch.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Flex(direction: Axis.vertical, children: [
            const Text("Connexion à Twitter",
                style: TextStyle(color: Color.fromARGB(255, 79, 83, 85))),
            const TextField(
                decoration: InputDecoration(
                    labelText: "Email", hintText: "email@example.com")),
            const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password", hintText: "Password")),
            const SwitchExample(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => print("connexion"),
                  child: const Text("Connexion")),
            )
          ]),
        ),
      ],
    );
  }
}
