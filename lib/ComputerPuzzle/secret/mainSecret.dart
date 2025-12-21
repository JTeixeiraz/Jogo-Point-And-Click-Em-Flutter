import 'package:flutter/material.dart';

class Mainsecret extends StatefulWidget {
  Mainsecret({Key? key}) : super(key: key);

  @override
  _MainsecretState createState() => _MainsecretState();
}

class _MainsecretState extends State<Mainsecret> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(60),
       child: Text(" - bielefeld \n - Dortmund \n - Zurique \n - Dresden \n - P = ?π \n\n\n Resposta: P.darkweb", style: TextStyle(color: Colors.white, fontSize: 25),),
    );
  }
}