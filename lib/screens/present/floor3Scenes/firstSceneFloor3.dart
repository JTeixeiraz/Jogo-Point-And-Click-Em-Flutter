import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';

class Firstscenefloor3 extends StatelessWidget {
  const Firstscenefloor3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/visaoRelogio.png', fit: BoxFit.cover,),
          ),


          Lefticon(route: '/presenteTerceiroAndarSair'),
          Rigthicon(route: '/paredeVazia')
        ],
      ),
    );
  }
}