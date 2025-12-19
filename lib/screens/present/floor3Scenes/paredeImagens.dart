import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/IconeAction.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';
import 'package:torredorelogio/service/SaveFile.dart';

class Paredeimagens extends StatefulWidget {
  const Paredeimagens({Key? key}) : super(key: key);

  @override
  _ParedeimagensState createState() => _ParedeimagensState();
}

class _ParedeimagensState extends State<Paredeimagens> {

  Savefile save = new Savefile();

  String _getImagemPorHorario() {
    final int horaAtual = DateTime.now().hour;
    if (horaAtual >= 5 && horaAtual < 12) {
      return 'assets/paredePresenteManha.png';
    }
    if (horaAtual >= 12 && horaAtual < 18) {
      return 'assets/paredePresenteTarde.png';
    }
    return 'assets/paredePresenteNoite.png';
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
                case 'assets/paredePresenteManha.png':
                  save.saveFile('assets/4.png', 'pintura.png');
                break;
                case 'assets/paredePresenteTarde.png':
                  save.saveFile('assets/5.png', 'pintura.png');
                break;
                case 'assets/paredePresenteNoite.png':
                  save.saveFile('assets/6.png', 'pintura.png');
                break;
              }
            }
          ),

          Lefticon(route: '/paredeVazia'),
          Rigthicon(route: '/presenteTerceiroAndarSair')
        ],
      ),
    );
  }
}
