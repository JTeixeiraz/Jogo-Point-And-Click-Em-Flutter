import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/IconeAction.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';

class Firstscenefloor1 extends StatefulWidget {
  Firstscenefloor1({Key? key}) : super(key: key);

  @override
  _Firstscenefloor1State createState() => _Firstscenefloor1State();
}

class _Firstscenefloor1State extends State<Firstscenefloor1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/InteriorPassado10.png',
              fit: BoxFit.cover,
            ),
          ),

          IconeWidget(
            height: 0.40, 
            width: 0.28, 
            icone: Icons.door_back_door, 
            onTap: (){

            }
          ),

          Lefticon(route: '/passado10LittleBox'),
          Rigthicon(route: '/passado10Pintura')
        ],
      ),
    );
  }
}