import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/IconeAction.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';

class Gooutdoorpast10 extends StatefulWidget {
  Gooutdoorpast10({Key? key}) : super(key: key);

  @override
  _Gooutdoorpast10State createState() => _Gooutdoorpast10State();
}

class _Gooutdoorpast10State extends State<Gooutdoorpast10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/portaSairPassado10.png',
              fit: BoxFit.cover,
            ),
          ),

           IconeWidget(
            height: 0.40, 
            width: 0.32, 
            icone: Icons.output_sharp, 
            onTap: (){
              Navigator.pushNamed(context, "/passado10");
            }
          ),



          Lefticon(route: '/passado10Pintura'),
          Rigthicon(route: '/passado10LittleBox')
        ],
      ),
    );
  }
}