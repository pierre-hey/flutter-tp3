import 'package:flutter/material.dart';

// Stateful Widget
class DemoStatefulWidget extends StatefulWidget {
  @override
  State<DemoStatefulWidget> createState() {
    // Retourne le state
    return _DemoStatefulWidgetState();
  }
}

// State de la classe
class _DemoStatefulWidgetState extends State<DemoStatefulWidget> {
  int _counter = 0;
  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Text('$_counter') => String format implicit
    return Flex(
      direction: Axis.vertical,
      children: [
        Text('Compteur : $_counter'),
        ElevatedButton(
            onPressed: () => {incrementCounter()},
            child: const Text("Incrémenter")),
      ],
    );
  }
}

class DemoStatefulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Twitter'),
      ),
      body: DemoStatefulWidget(),
    );
  }
}
