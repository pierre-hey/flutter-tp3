import 'package:eni_demo/helper/custom-validator.dart';
import 'package:flutter/material.dart';

class DemoFormStatefulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Demo Form'),
        ),
        body: DemoFormStatefulWidget());
  }
}

// Stateful widget
class DemoFormStatefulWidget extends StatefulWidget {
  // Associer mon state
  @override
  State<DemoFormStatefulWidget> createState() {
    return _DemoFormStatefulWidgetState();
  }
}

class _DemoFormStatefulWidgetState extends State<DemoFormStatefulWidget> {
  // Contient le state de mon formulaire
  GlobalKey<FormState> form = GlobalKey<FormState>();

  late String email;
  late String password;

  void validateForm() {
    // Enclancher la validation
    if (form.currentState!.validate()) {
      // Appel web service/metier
      print("Success");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: form,
        child: Flex(
          direction: Axis.vertical,
          children: [
            // Un champ email
            TextFormField(
              decoration: InputDecoration(labelText: "Email"),
              onSaved: (newValue) => email,
              validator: (value) =>
                  CustomValidatorLibrary.validateEmail(value!),
            ),

            // Un champ password
            TextFormField(
              decoration: InputDecoration(labelText: "Password"),
              onSaved: (newValue) => password,
              validator: (value) =>
                  CustomValidatorLibrary.validatePassword(value!),
            ),

            // Submit
            ElevatedButton(
                onPressed: () {
                  validateForm();
                },
                child: Text("Submit"))
          ],
        ));
  }
}
