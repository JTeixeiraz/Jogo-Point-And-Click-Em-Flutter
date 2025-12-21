import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/PlayerButtonReligiao.dart';
import 'package:torredorelogio/service/SaveFile.dart';

class Religiao extends StatefulWidget {
  Religiao({Key? key}) : super(key: key);

  @override
  _ReligiaoState createState() => _ReligiaoState();
}

class _ReligiaoState extends State<Religiao> {
  Savefile save = new Savefile();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(120),
       child: Column(
        children: [
          Playerbuttonreligiao(),
          IconButton(
            onPressed: () {
              save.saveFile('assets/music_com_texto.wav', "Musica.wav");
            }, icon: Icon(Icons.download))
        ],
       ),
    );
  }
}