import 'package:flutter/material.dart';

class Tempo extends StatefulWidget {
  Tempo({Key? key}) : super(key: key);

  @override
  _TempoState createState() => _TempoState();
}

class _TempoState extends State<Tempo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(90),
       child: Column(
          children: [
            SelectableText("!e!xs51b8d8+vmrllAro3", style: TextStyle(color: Colors.black, fontSize: 70),),
          ],
       )
    );
  }
}

//!e!xs51b8d8+vmrllAro3