import 'package:eni_demo/components/header-button.dart';
import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF58B0F0),
      child:
          // Layout flex pour afficher 3 boutons horizontal

          Padding(
        padding: const EdgeInsets.all(8.0),
        child: Flex(
          direction: Axis.horizontal,
          // Les 3 boutons
          children: [
            HeaderButton("assets/icons/pencil.png"),
            const Expanded(
                child: Text("Accueil",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white))),
            HeaderButton("assets/icons/search.png"),
          ],
        ),
      ),
    );
  }
}
