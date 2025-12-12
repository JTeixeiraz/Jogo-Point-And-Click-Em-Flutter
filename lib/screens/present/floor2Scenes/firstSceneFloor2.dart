import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/IconeAction.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';

class Firstscenefloor2 extends StatefulWidget {
  Firstscenefloor2({Key? key}) : super(key: key);

  @override
  _Firstscenefloor2State createState() => _Firstscenefloor2State();
}

class _Firstscenefloor2State extends State<Firstscenefloor2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/Cena1SegundoAndar.png',
              fit: BoxFit.cover,
            ),
          ),

          IconeWidget(
            height: 0.48, 
            width: 0.475, 
            icone: Icons.open_in_new, 
            onTap: (){

            }
          ),


          Lefticon(route: '/segundoAndarEsquerda'),
          Rigthicon(route: '/segundoAndarDireita')
        ],
      ),
    );
  }
}