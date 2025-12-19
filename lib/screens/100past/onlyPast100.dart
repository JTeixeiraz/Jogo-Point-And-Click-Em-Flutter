import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/IconeAction.dart';

class Onlypast100 extends StatefulWidget {
  Onlypast100({Key? key}) : super(key: key);

  @override
  _Onlypast100State createState() => _Onlypast100State();
}

class _Onlypast100State extends State<Onlypast100> {

  bool papelAberto = false;


  void abrirPapel(){
    setState(() {
      papelAberto = true;
    });
  }

  void fecharPapel(){
    setState(() {
      papelAberto = false;
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
              'assets/visaoPassado100.png',
              fit: BoxFit.cover,
            ),
          ),

          IconeWidget(
            height: 0.80, 
            width: 0.47, 
            icone: Icons.remove_red_eye, 
            onTap: abrirPapel
          ),

          IconeWidget(
            height: 0.80, 
            width: 0.90, 
            icone: Icons.timer_sharp, 
            onTap: (){
              Navigator.pushNamed(context, "/");
            }
          ),


          if(papelAberto)
              Positioned.fill(
              child: GestureDetector(
                onTap: fecharPapel,
                child: Container(
                  color: Colors.black.withOpacity(0.8),
                  child: Center(
                    child: GestureDetector(
                      onTap: (){},
                      child: SingleChildScrollView(
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          constraints: const BoxConstraints(maxWidth: 700,),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.9),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: const Color(0xFF92400E).withOpacity(0.2),
                                      width: 4,
                                    ),
                                  ),
                                  width: double.infinity,
                                  child: Expanded(
                                    child: Image.asset('assets/papel100.png'),
                                  )
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