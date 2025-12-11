import 'dart:ffi';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:torredorelogio/service/lockLogic.dart';

class FrontDoor extends StatefulWidget {
  FrontDoor({Key? key}) : super(key: key);

  @override
  _FrontDoorState createState() => _FrontDoorState();
}

class _FrontDoorState extends State<FrontDoor> {

  bool lockIsOpen = false;
  bool timeTravelIsOpen = false;
  final passwordLock = TextEditingController();
  Locklogic locklogic = new Locklogic();

  final AudioPlayer _player = AudioPlayer();
  bool isPlaying = false;

  Future<void> _toggleIsPlaying() async{
    if(isPlaying){
      await _player.pause();
      setState(() {
        isPlaying = false;
      });
    }else{
      await _player.play(AssetSource('radio.wav'));
      setState(() {
        isPlaying = true;
      });
    }
  }

  void openLock(){
    setState(() {
      lockIsOpen = true;
    });
  }

  void closeLock(){
    setState(() {
      lockIsOpen = false;
    });
  }

  void getClock(){
    setState(() {
      timeTravelIsOpen = true;
    });
  }

  void closeClock(){
    setState(() {
      timeTravelIsOpen =  false;
    });
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/cena1Presente.png',
              fit: BoxFit.cover,
            ),
          ),

          //
          Positioned(
            left: MediaQuery.of(context).size.width * 0.47, // localizacao na tela
            top: MediaQuery.of(context).size.height * 0.65,
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
            left: MediaQuery.of(context).size.width * 0.90, // localizacao na tela
            top: MediaQuery.of(context).size.height * 0.80,
            child: GestureDetector(
              onTap: getClock,
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
                      Icons.timer_sharp,
                      color: Colors.amber.withOpacity(0.7),
                      size: 32,
                    ),
                  ),
                ),
              ),
            ),
          ),

          if(lockIsOpen)
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
                                              int textPut = int.parse(passwordLock.text);
                                              if(locklogic.tryToOpen(textPut)){
                                                Navigator.pushNamed(context, '/interiorPresenteRadio');
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

          if(timeTravelIsOpen)
          Positioned.fill(
            child: GestureDetector(
              onTap: closeClock,
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
                                          ElevatedButton(
                                            onPressed: (){
                                              Navigator.pushNamed(context, '/passado10');
                                            },
                                            child: Text("10", style: TextStyle(color: Colors.white),)
                                          ),
                                          const SizedBox(height: 20,),
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.pushNamed(context, '/passado10');
                                            },
                                            child: Text("100", style: TextStyle(color: Colors.white),),
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
          ),
        ],
      ),
    );
  }
}