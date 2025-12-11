import 'package:flutter/material.dart';

class PaintingScene extends StatefulWidget {
  PaintingScene({Key? key}) : super(key: key);

  @override
  _PaintingSceneState createState() => _PaintingSceneState();
}

class _PaintingSceneState extends State<PaintingScene> {

  bool paintingHasSeen = false;

  void OpenPainting(){
    setState(() {
      paintingHasSeen = true;
    });
  }

  void ClosePainting(){
    setState(() {
      paintingHasSeen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/interiorPintura.png',
              fit: BoxFit.cover,
            ),
          ),


        if(paintingHasSeen)
        Positioned.fill(
          child: GestureDetector(
            onTap: ClosePainting,
            child: Container(
              color: Colors.black.withOpacity(0.7),
              child: Center(
                child: GestureDetector(
                  onTap: (){},
                  child: SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      constraints: const BoxConstraints(maxWidth: 600),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: const Color(0xFF92400E).withOpacity(0.2),
                                      width: 4
                                    )
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/pinturaZoomed.png'
                                      ),
                                      const SizedBox(height: 50,)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

          if(!paintingHasSeen)
          Positioned(
            left: MediaQuery.of(context).size.width * 0.465, // localizacao na tela
            top: MediaQuery.of(context).size.height * 0.40,
            child: GestureDetector(
              onTap: OpenPainting,
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
                      Icons.remove_red_eye,
                      color: Colors.amber.withOpacity(0.7),
                      size: 32,
                    ),
                  ),
                ),
              ),
            ),
          ),




          //Mudar para a direita
          if(!paintingHasSeen)
          Positioned(
            left: MediaQuery.of(context).size.width * 0.92, // localizacao na tela
            top: MediaQuery.of(context).size.height * 0.49,
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/doorPovPresente');
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
          if(!paintingHasSeen)
          Positioned(
            left: MediaQuery.of(context).size.width * 0.04, // localizacao na tela
            top: MediaQuery.of(context).size.height * 0.49,
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/interiorPresenteRadio');
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