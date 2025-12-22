import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/IconeAction.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';

class Visaorelogiopassado extends StatefulWidget {
  Visaorelogiopassado({Key? key}) : super(key: key);

  @override
  _VisaorelogiopassadoState createState() => _VisaorelogiopassadoState();
}

class _VisaorelogiopassadoState extends State<Visaorelogiopassado> {

  String _VerSeHomemPodeApareder(){
    final int horaAtual = DateTime.now().hour;
    if(horaAtual < 5){
      return 'assets/visaoRelogioHomemPassado.png';
    }else{
      return 'assets/visaoRelogioPassado.png';
    }
  }

  bool modalAberto = false;

  void abrirModal(){
    setState(() {
      modalAberto = true;
    });
  }

  void fecharModal(){
    setState(() {
      modalAberto = false;
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
                _VerSeHomemPodeApareder(),
                fit: BoxFit.cover,
              ),
          ),

          if(_VerSeHomemPodeApareder() == "assets/visaoRelogioHomemPassado.png")
          IconeWidget(
            height: 0.55, 
            width: 0.13, 
            icone: Icons.spatial_tracking_outlined, 
            onTap: abrirModal
          ),


          if(modalAberto)
          Positioned.fill(
            child: GestureDetector(
              onTap: fecharModal,
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
                                          SelectableText("Computador: 25439324", style: TextStyle(color: Colors.black),)
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


          if(!modalAberto)
          Lefticon(route: '/paredeSairPassado'),
          if(!modalAberto)
          Rigthicon(route: '/paredeVaziaPassado')
        ],
      ),
    );
  }
}