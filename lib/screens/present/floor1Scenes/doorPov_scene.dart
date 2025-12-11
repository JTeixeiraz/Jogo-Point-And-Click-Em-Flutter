import 'package:flutter/material.dart';

class DoorpovScene extends StatefulWidget {
  DoorpovScene({Key? key}) : super(key: key);

  @override
  _DoorpovSceneState createState() => _DoorpovSceneState();
}

class _DoorpovSceneState extends State<DoorpovScene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/visaoPorta.png',
              fit: BoxFit.cover,
            ),
          ),


          Positioned(
            left: MediaQuery.of(context).size.width * 0.31, // localizacao na tela
            top: MediaQuery.of(context).size.height * 0.40,
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/');
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.06, //tamanho do botao
                  height: MediaQuery.of(context).size.height * 0.10,
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.0),
                    border: Border.all(
                      color: Colors.amber.withOpacity(0.3),
                      width: 2, 
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  child: Center( // Icone
                    child: Icon(
                      Icons.exit_to_app_sharp,
                      color: Colors.amber.withOpacity(0.7),
                      size: 32,
                    ),
                  ),
                ),
              ),
            ),
          ),

          //Mudar para a direita
          Positioned(
            left: MediaQuery.of(context).size.width * 0.92, // localizacao na tela
            top: MediaQuery.of(context).size.height * 0.49,
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/tableBoxPresente');
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
                Navigator.pushNamed(context, '/interiorPresentePintura');
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