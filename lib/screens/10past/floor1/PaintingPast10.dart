import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/IconeAction.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';
import 'package:torredorelogio/service/SaveFile.dart';

class Paintingpast10 extends StatefulWidget {
  Paintingpast10({Key? key}) : super(key: key);

  @override
  _Paintingpast10State createState() => _Paintingpast10State();
}

class _Paintingpast10State extends State<Paintingpast10> {

  Savefile dowload = new Savefile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/pinturaPassad10.png',
              fit: BoxFit.cover,
            ),
          ),

          IconeWidget(
            height: 0.45, 
            width: 0.45, 
            icone: Icons.remove_red_eye_sharp, 
            onTap: (){
              
            }
          ),

          Lefticon(route: '/passado10Floor1'),
          Rigthicon(route: '/passado10PortaIrEmBora')
        ],
      ),
    );
  }
}