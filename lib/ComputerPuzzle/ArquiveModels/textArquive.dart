import 'package:flutter/material.dart';

class Textarquive extends StatelessWidget {

  final String content;

  const Textarquive({
    Key? key,
    required this.content
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(20),
      child: Text(this.content, style: TextStyle(color: Colors.black),textAlign: TextAlign.left,),
    );
  }
}