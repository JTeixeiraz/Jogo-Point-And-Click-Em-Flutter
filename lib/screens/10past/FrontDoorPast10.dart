import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/IconeAction.dart';

class Frontdoorpast10 extends StatefulWidget {
  Frontdoorpast10({Key? key}) : super(key: key);

  @override
  _Frontdoorpast10State createState() => _Frontdoorpast10State();
}

class _Frontdoorpast10State extends State<Frontdoorpast10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/PortaFrentePassado10.png',
              fit: BoxFit.cover,
            ),
          ),

          IconeWidget(
            height: 0.65,
            width: 0.47, 
            icone: Icons.open_in_browser_sharp, 
            onTap: (){
              Navigator.pushNamed(context, "/passado10Floor1");
            }
          ),

          IconeWidget(
            height: 0.80, 
            width: 0.90, 
            icone: Icons.timer_sharp, 
            onTap: (){
              Navigator.pushNamed(context, "/");
            }
          ),
        ],
      ),
    );
  }
}