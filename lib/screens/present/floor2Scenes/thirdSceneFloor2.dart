import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/IconeAction.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';
import 'package:torredorelogio/service/lockLogic.dart';

class Thirdscenefloor2 extends StatefulWidget {
  Thirdscenefloor2({Key? key}) : super(key: key);

  @override
  _Thirdscenefloor2State createState() => _Thirdscenefloor2State();
}

class _Thirdscenefloor2State extends State<Thirdscenefloor2> {

  bool cadeadoAberto = false;
  final TextEditingController senha = new TextEditingController();


  void abrirCadeado(){
    setState(() {
      cadeadoAberto = true;
    });
  }

  void fecharCadeado(){
    setState(() {
      cadeadoAberto = false;
    });
  }


  @override
  Widget build(BuildContext context) {

    Locklogic lock = new Locklogic();

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
          child: Image.asset(
            'assets/visaoAltarRefeita.png',
            fit: BoxFit.cover,
          ),
        ),

        IconeWidget(
          height: 0.55, 
          width: 0.70, 
          icone: Icons.lock, 
          onTap: abrirCadeado
        ),

        if(cadeadoAberto)
        Positioned.fill(
          child: GestureDetector(
            onTap: fecharCadeado,
            child: Container(
              color: Colors.black.withOpacity(0.7),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    
                  },
                  child: SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      constraints: const BoxConstraints(maxWidth: 300),
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
                                            controller: senha,
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
                                              bool resultado = lock.openSecondFloorDoor(senha.text.toUpperCase());
                                              if(resultado){

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

          Lefticon(route: '/segundoAndarPresente'),
          Rigthicon(route: '/segundoAndarTras')
        ],
      ),
    );
  }
}