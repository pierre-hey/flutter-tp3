import 'dart:ui';

import 'package:eni_demo/content-page.dart';
import 'package:eni_demo/footer-page.dart';
import 'package:eni_demo/header-page.dart';
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
      home: const EniDemoPage(),
    );
  }
}

class EniDemoPage extends StatelessWidget {
  const EniDemoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Twitter'),
      ),

      // Corps de la page
      body: Flex(
        direction: Axis.vertical,
        children: [
          // HEADER
          HeaderPage(),
          // CONTENT
          ContentPage(),
          // FOOTER
          FooterPage()
        ],
      ),
    );
  }
}
