import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';

class ComputerscenePast extends StatefulWidget {
  ComputerscenePast({Key? key}) : super(key: key);

  @override
  _ComputerscenePastState createState() => _ComputerscenePastState();
}

class _ComputerscenePastState extends State<ComputerscenePast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/cena1passado.png',
              fit: BoxFit.cover,
            ),
          ),


          Lefticon(route: '/cenaEsquerdaPassado10segundo'),
          Rigthicon(route: '/cenaDireitaPassado10segundo')
        ],
      ),
    );
  }
}