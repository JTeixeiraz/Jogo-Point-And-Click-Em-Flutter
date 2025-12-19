import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';

class Visaorelogiopassado extends StatelessWidget {
  const Visaorelogiopassado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
                'assets/visaoRelogioPassado.png',
                fit: BoxFit.cover,
              ),
          ),

          Lefticon(route: '/paredeSairPassado'),
          Rigthicon(route: '/paredeVaziaPassado')
        ],
      ),
    );
  }
}