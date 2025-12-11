import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/IconeAction.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';

class Littleboxscene extends StatefulWidget {
  Littleboxscene({Key? key}) : super(key: key);

  @override
  _LittleboxsceneState createState() => _LittleboxsceneState();
}

class _LittleboxsceneState extends State<Littleboxscene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/mesaCaixinha10.png',
              fit: BoxFit.cover,
            ),
          ),

          IconeWidget(
            height: 0.50, 
            width: 0.45, 
            icone: Icons.lock_sharp, 
            onTap: (){

            }
          ),

          Lefticon(route: '/passado10PortaIrEmBora'),
          Rigthicon(route: '/passado10Floor1')
        ],
      ),
    );
  }
}