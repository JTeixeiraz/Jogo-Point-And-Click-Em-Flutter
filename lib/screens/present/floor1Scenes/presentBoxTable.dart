import 'package:flutter/material.dart';

class Presentboxtable extends StatefulWidget {
  Presentboxtable({Key? key}) : super(key: key);

  @override
  _PresentboxtableState createState() => _PresentboxtableState();
}

class _PresentboxtableState extends State<Presentboxtable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/mesaCaixinha.png',
              fit: BoxFit.cover,
            ),
          ),



          //Mudar para a direita
          Positioned(
            left: MediaQuery.of(context).size.width * 0.92, // localizacao na tela
            top: MediaQuery.of(context).size.height * 0.49,
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/interiorPresenteRadio');
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Icon(
                      Icons.keyboard_arrow_right_sharp,
                      color: Colors.amber,
                      size: 32,
                    ),
              ),
            ),
          ),


          //Para a esuqerda
          Positioned(
            left: MediaQuery.of(context).size.width * 0.04, // localizacao na tela
            top: MediaQuery.of(context).size.height * 0.49,
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/doorPovPresente');
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Icon(
                      Icons.keyboard_arrow_left_sharp,
                      color: Colors.amber,
                      size: 32,
                    ),
              ),
            ),
         ),
        ],
      ),
    );
  }
}