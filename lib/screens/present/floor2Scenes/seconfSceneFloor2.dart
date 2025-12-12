import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';

class Seconfscenefloor2 extends StatefulWidget {
  Seconfscenefloor2({Key? key}) : super(key: key);

  @override
  _Seconfscenefloor2State createState() => _Seconfscenefloor2State();
}

class _Seconfscenefloor2State extends State<Seconfscenefloor2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/Cena2SegundoAndar.png',
              fit: BoxFit.cover,
            ),
          ),



          Lefticon(route: '/segundoAndarTras'),
          Rigthicon(route: '/segundoAndarPresente')
        ],
      ),
    );
  }
}