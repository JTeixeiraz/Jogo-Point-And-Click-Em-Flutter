import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';

class Paredevaziapassado extends StatelessWidget {
  const Paredevaziapassado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/paredeVaziaPassado.png',
              fit: BoxFit.cover,
            ),
          ),

          Lefticon(route: '/passadoTerceiroAndar'),
          Rigthicon(route: '/paredeImagensPassado')
        ],
      ),
    );
  }
}