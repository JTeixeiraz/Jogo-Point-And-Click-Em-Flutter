import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/IconeAction.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';
import 'package:torredorelogio/service/SaveFile.dart';

class Visaoimagenspassado extends StatefulWidget {
  Visaoimagenspassado({Key? key}) : super(key: key);

  @override
  _VisaoimagenspassadoState createState() => _VisaoimagenspassadoState();
}

class _VisaoimagenspassadoState extends State<Visaoimagenspassado> {

  Savefile save = new Savefile();

  String _getImagemPorHorario(){
    final int horaAtual = DateTime.now().hour;
    if(horaAtual >= 5 && horaAtual < 12){
      return 'assets/paredePassadoManha2.png';
    }
    if(horaAtual >= 12 && horaAtual <= 18){
      return 'assets/paredePassadoTarde2.png';
    }
    return 'assets/paredePassadoNoite2.png';
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              _getImagemPorHorario(),
              fit: BoxFit.cover,
            ),
          ),

          IconeWidget(
            height: 0.45, 
            width: 0.45, 
            icone: Icons.remove_red_eye, 
            onTap: (){
              String imgAtual = _getImagemPorHorario();
              switch(imgAtual){
                case 'assets/paredePassadoManha2.png':
                  save.saveFile('assets/1.png', 'pintura.png');
                break;
                case 'assets/paredePassadoTarde2.png':
                  save.saveFile('assets/2.png', 'pintura.png');
                break;
                case 'assets/paredePassadoNoite2.png':
                  save.saveFile('assets/3.png', 'pintura.png');
                break;
              }
            }
          ),

          Lefticon(route: '/paredeVaziaPassado'),
          Rigthicon(route: '/paredeSairPassado')
        ],
      ),
    );
  }
}