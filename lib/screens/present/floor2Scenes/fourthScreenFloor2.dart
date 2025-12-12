import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/IconeAction.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';

class Fourthscreenfloor2 extends StatefulWidget {
  Fourthscreenfloor2({Key? key}) : super(key: key);

  @override
  _Fourthscreenfloor2State createState() => _Fourthscreenfloor2State();
}

class _Fourthscreenfloor2State extends State<Fourthscreenfloor2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/Cena4SegundoAndar.png',
              fit: BoxFit.cover,
            ),
          ),


          IconeWidget(
            height: 0.45, 
            width: 0.49, 
            icone: Icons.door_back_door, 
            onTap: (){
              Navigator.pushNamed(context, '/interiorPresenteRadio');
            }
          ),



          Rigthicon(route: '/segundoAndarEsquerda'),
          Lefticon(route: '/segundoAndarDireita')
        ],
      ),
    );
  }
}