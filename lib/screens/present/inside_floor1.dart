import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/PlayerButtonRadio.dart';
import 'package:torredorelogio/service/lockLogic.dart';

class InsideFloor1 extends StatefulWidget {
  InsideFloor1({Key? key}) : super(key: key);

  @override
  _InsideFloor1State createState() => _InsideFloor1State();
}

class _InsideFloor1State extends State<InsideFloor1> {

  Locklogic logic = new Locklogic();

  bool unlockDoor = false;

  bool radioIsOepn = false;

  final passwordLock = TextEditingController();

  void openLock(){
    setState(() {
      unlockDoor = true;
    });
  }

  void closeLock(){
    setState(() {
      unlockDoor = false;
    });
  }

  void openRadio(){
    setState(() {
      radioIsOepn = true;
    });
  }

  void closeRadio(){
    setState(() {
      radioIsOepn = false;
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
              'assets/interiorRadio.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.30, // localizacao na tela
            top: MediaQuery.of(context).size.height * 0.40,
            child: GestureDetector(
              onTap: openLock,
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
                      Icons.lock_outlined,
                      color: Colors.amber.withOpacity(0.7),
                      size: 32,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            left: MediaQuery.of(context).size.width * 0.63, // localizacao na tela
            top: MediaQuery.of(context).size.height * 0.55,
            child: GestureDetector(
              onTap: openRadio,
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
                      Icons.play_arrow,
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
                Navigator.pushNamed(context, '/interiorPresentePintura');
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
                Navigator.pushNamed(context, '/tableBoxPresente');
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
        
          if(radioIsOepn)
          Positioned.fill(
            child: GestureDetector(
              onTap: closeLock,
              child: Container(
                color: Colors.black.withOpacity(0.7),
                child: Center(
                  child: GestureDetector(
                    onTap: (){},
                    child: SingleChildScrollView(
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          constraints: const BoxConstraints(maxWidth: 300),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding:  const EdgeInsets.all(20),
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
                                          Playerbuttonradio(),
                                          const SizedBox(height: 40,),
                                          ElevatedButton(onPressed: closeRadio, child: Text("Fechar", style: TextStyle(color: Colors.white),))
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
          ),

          if(unlockDoor)
          Positioned.fill(
            child: GestureDetector(
              onTap: closeLock,
              child: Container(
                color: Colors.black.withOpacity(0.7),
                child: Center(
                  child: GestureDetector(
                    onTap: (){},
                    child: SingleChildScrollView(
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          constraints: const BoxConstraints(maxWidth: 300),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding:  const EdgeInsets.all(20),
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
                                          Icon(Icons.lock, size: 50, color: Colors.black,),
                                          TextField(
                                            controller: passwordLock,
                                            decoration: InputDecoration(
                                              hint: Text('Senha...', style: TextStyle(color: Colors.black),),
                                            ),
                                            style: TextStyle(
                                              color: Colors.black
                                            ),
                                          ),
                                          const SizedBox(height: 20,),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor: Colors.white,
                                              padding: const EdgeInsets.all(10)
                                            ),
                                            onPressed: (){
                                              bool resultado = logic.openDoorToSecondFloor(passwordLock.text);
                                              if(resultado){
                                                Navigator.pushNamed(context, "/segundoAndarPresente");
                                              }
                                            },
                                            child: Text("Abrir"),
                                          ),
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
          ),
        ],
      ),
    );
  }
}