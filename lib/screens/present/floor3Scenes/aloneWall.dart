import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';

class Alonewall extends StatelessWidget {
  const Alonewall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/visaoParedeSemNada.png",
              fit: BoxFit.cover,
            ),
          ),

          Lefticon(route: '/presenteTerceiroAndar'),
          Rigthicon(route: '/paredeImagem')
        ],
      ),
    );
  }
}