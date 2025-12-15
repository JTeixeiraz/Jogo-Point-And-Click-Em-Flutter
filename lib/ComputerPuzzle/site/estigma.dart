import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Estigma extends StatefulWidget {
  Estigma({Key? key}) : super(key: key);

  @override
  _EstigmaState createState() => _EstigmaState();
}

class _EstigmaState extends State<Estigma> {

  String p = "22°30'43.3''S 43°10'46.2''W";
  String e = "38°34'17.3''N 7°54'48.6''W";
  String c = "25°25'36.7''S 49°15'54.8''W";
  String a = "52°22'01.3''N 4°54'11.0''E";
  String d = "53°20'59.0''N 6°15'37.1''W";
  String o = "59°54'43.7''N 10°43'52.7''E";


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
       child: SelectableText("$p \n$e \n$c \n$a \n$d \n$o \n . \nw \ne \nb", style: TextStyle(color: Colors.black),textAlign: TextAlign.center,)
    );
  }
}