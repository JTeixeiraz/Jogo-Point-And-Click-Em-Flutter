import 'package:flutter/material.dart';
import 'package:torredorelogio/service/SaveFile.dart';

class Sombra extends StatefulWidget {
  Sombra({Key? key}) : super(key: key);

  @override
  _SombraState createState() => _SombraState();
}

class _SombraState extends State<Sombra> {
  Savefile save = new Savefile();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(120),
       child: Column(
        children: [
          Image.asset('assets/bcdReal.png'),
          IconButton(
            onPressed: () {
              save.saveFile("assets/bcdReal.png", "end.png");
            }, 
            icon: Icon(Icons.download))
        ],
       ),
    );
  }
}