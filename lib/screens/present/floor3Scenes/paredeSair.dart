import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/IconeAction.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';

class Paredesair extends StatelessWidget {
  const Paredesair({Key? key}) : super(key: key);

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
              Navigator.pushNamed(context, '/segundoAndarPresente');
            }
          ),


          Lefticon(route: '/paredeImagem'),
          Rigthicon(route: '/presenteTerceiroAndar')
        ],
      ),
    );
  }
}