import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/PlayerButtonPraga.dart';
import 'package:torredorelogio/Widgets/PlayerButtonRadio.dart';

class Praga extends StatefulWidget {
  Praga({Key? key}) : super(key: key);

  @override
  _PragaState createState() => _PragaState();
}

class _PragaState extends State<Praga> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(120),
       child: Playerbuttonpraga(),
    );
  }
}