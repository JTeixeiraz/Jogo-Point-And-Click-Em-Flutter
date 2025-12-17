import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';

class Paredescreenpast extends StatelessWidget {
  const Paredescreenpast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/cenaEsquerdaPassado.png',
              fit: BoxFit.cover,
            ),
          ),


          Lefticon(route: '/cenaTrasPassado10segundo'),
          Rigthicon(route: '/cena1passado10segundo')
        ],
      ),
    );
  }
}