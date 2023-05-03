import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = false;

  @override
  Widget build(BuildContext context) {
    return Flex(direction: Axis.horizontal, children: [
      Switch(
        // This bool value toggles the switch.
        value: light,
        activeColor: Colors.blue,
        onChanged: (bool value) {
          // This is called when the user toggles the switch.
          setState(() {
            light = value;
          });
        },
      ),
      const Text("Mémoriser mes informations",
          style: TextStyle(color: Color.fromARGB(255, 169, 196, 204))),
    ]);
  }
}
