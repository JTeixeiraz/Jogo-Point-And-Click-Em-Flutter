import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/IconeAction.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';
import 'package:torredorelogio/service/lockLogic.dart';

class Littleboxscene extends StatefulWidget {
  Littleboxscene({Key? key}) : super(key: key);

  @override
  _LittleboxsceneState createState() => _LittleboxsceneState();
}

class _LittleboxsceneState extends State<Littleboxscene> {
  bool OpenModal = false;


  void openLock(){
    setState(() {
      OpenModal = true;
    });
  }

  void closeLock(){
    setState(() {
      OpenModal = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Locklogic locklogic = new Locklogic();


    final passwordLock = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/mesaCaixinha10.png',
              fit: BoxFit.cover,
            ),
          ),

          IconeWidget(
            height: 0.50, 
            width: 0.45, 
            icone: Icons.lock_sharp, 
            onTap: openLock
          ),

          if(OpenModal)
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
                        constraints: const BoxConstraints(maxWidth: 400),
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
                                              bool resultado = locklogic.tryToOpenLittleBoxFloor1(passwordLock.text);
                                              if(resultado){
                                                Navigator.pushNamed(context, "");
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

          Lefticon(route: '/passado10PortaIrEmBora'),
          Rigthicon(route: '/passado10Floor1')
        ],
      ),
    );
  }
}