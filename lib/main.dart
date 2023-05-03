import 'package:eni_demo/pages/demo-widget.dart';
import 'package:eni_demo/pages/eni-demo-page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Application Flutter
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Page d'accueil
      // home: const EniDemoPage(),
      home: DemoWidgetPage(),
    );
  }
}
