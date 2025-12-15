import 'package:flutter/material.dart';
import 'package:torredorelogio/service/SaveFile.dart';

class Sangue extends StatefulWidget {
  Sangue({Key? key}) : super(key: key);

  @override
  _SangueState createState() => _SangueState();
}

class _SangueState extends State<Sangue> {

  Savefile save = new Savefile();

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
        children: [
          ElevatedButton(onPressed: (){
            save.saveFile('assets/audioSangue.wav', "audioSangue.wav");
          }, child: Text("Dowload", style: TextStyle(color: Colors.white),))
        ],
       ),
    );
  }
}