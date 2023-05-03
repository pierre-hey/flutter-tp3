import 'package:eni_demo/header-button.dart';
import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF58B0F0),
      child:
          // Layout flex pour afficher 3 boutons horizontal
          Padding(
        padding: const EdgeInsets.all(25),
        child: Flex(
          direction: Axis.horizontal,
          // Les 3 boutons
          children: [
            HeaderButton("Nouveau"),
            HeaderButton("Accueil"),
            HeaderButton("Rechercher"),
          ],
        ),
      ),
    );
  }
}
