import 'package:eni_demo/components/tweetComponents/switch.dart';
import 'package:flutter/material.dart';

/*
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
*/
class FormLoginStateFull extends StatefulWidget {
  @override
  State<FormLoginStateFull> createState() {
    return _FormLogin();
  }
}

class _FormLogin extends State<FormLoginStateFull> {
  TextEditingController textFieldEmailController = TextEditingController();
  TextEditingController textFieldPasswordController = TextEditingController();

  bool emptyMail = false;
  bool emptyPassword = false;
  String errorMessage = "";

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
            TextField(
                controller: textFieldEmailController,
                decoration: const InputDecoration(
                    labelText: "Email", hintText: "email@example.com")),
            TextField(
                controller: textFieldPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: "Password", hintText: "Password")),
            const SwitchExample(),

            // Affichage du message d'erreur
            Text(
              errorMessage,
              style: const TextStyle(color: Colors.red),
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => checkForm(), child: const Text("Connexion")),
            )
          ]),
        ),
      ],
    );
  }

  void checkForm() {
    bool success = true;

    if (textFieldEmailController.text.isEmpty) {
      success = false;
    }
    if (textFieldPasswordController.text.isEmpty) {
      success = false;
    }

    setState(() {
      success
          ? errorMessage = ""
          : errorMessage = "Erreur, les champs sont invalide";
    });
  }
}
