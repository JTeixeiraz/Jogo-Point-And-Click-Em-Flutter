import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/IconeAction.dart';

class Openedbox extends StatefulWidget {
  Openedbox({Key? key}) : super(key: key);

  @override
  _OpenedboxState createState() => _OpenedboxState();
}

class _OpenedboxState extends State<Openedbox> {

  bool papelSendoVisto = false;

  void verPapel(){
    setState(() {
      papelSendoVisto = true;
    });
  }

  void sairPapel(){
    setState(() {
      papelSendoVisto = false;
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
              'assets/CaixinhaAberta.png',
              fit: BoxFit.cover,
            ),
          ),

          IconeWidget(
            height: 0.85, 
            width: 0.45, 
            icone: Icons.arrow_downward_sharp, 
            onTap: (){
              Navigator.pushNamed(context, '/passado10LittleBox');
            }
          ),

          IconeWidget(
            height: 0.60, 
            width: 0.45, 
            icone: Icons.remove_red_eye_sharp, 
            onTap: verPapel
          ),

          
          if(papelSendoVisto)
          Positioned.fill(
            child: GestureDetector(
              onTap: sairPapel,
              child: Container(
                color: Colors.black.withOpacity(0.7),
                child: Center(
                  child: GestureDetector(
                    onTap: (){},
                    child: SingleChildScrollView(
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        constraints: const BoxConstraints(maxWidth: 500),
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
                                        color: Colors.white.withOpacity(0.9),
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: const Color(0xFF92400E).withOpacity(0.2),
                                          width: 4,
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'assets/PapelVigenere.png'
                                          )
                                        ],
                                      )
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
          )


        ],
      ),
    );
  }
}