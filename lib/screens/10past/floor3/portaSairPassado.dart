import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/IconeAction.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';

class Portasairpassado extends StatelessWidget {
  const Portasairpassado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/cenaTrasPassado.png',
              fit: BoxFit.cover,
            ),
          ),

          IconeWidget(
            height: 0.45, 
            width: 0.47, 
            icone: Icons.door_back_door, 
            onTap: (){
              Navigator.pushNamed(context, '/cena1passado10segundo');
            }
          ),

          Lefticon(route: '/paredeImagensPassado'),
          Rigthicon(route: '/passadoTerceiroAndar')
        ],
      ),
    );
  }
}