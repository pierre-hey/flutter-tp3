import 'package:flutter/material.dart';

import '../content-page.dart';
import '../footer-page.dart';
import '../header-page.dart';

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
