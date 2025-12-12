import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';

class Thirdscenefloor2 extends StatefulWidget {
  Thirdscenefloor2({Key? key}) : super(key: key);

  @override
  _Thirdscenefloor2State createState() => _Thirdscenefloor2State();
}

class _Thirdscenefloor2State extends State<Thirdscenefloor2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
          child: Image.asset(
            'assets/Cena3SegundoAndar.png',
            fit: BoxFit.cover,
          ),
        ),





          Lefticon(route: '/segundoAndarPresente'),
          Rigthicon(route: '/segundoAndarTras')
        ],
      ),
    );
  }
}