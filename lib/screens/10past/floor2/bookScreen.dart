import 'package:flutter/material.dart';
import 'package:torredorelogio/Widgets/Icons/IconeAction.dart';
import 'package:torredorelogio/Widgets/Icons/LeftIcon.dart';
import 'package:torredorelogio/Widgets/Icons/RigthIcon.dart';

class BookscreenPast extends StatefulWidget {
  BookscreenPast({Key? key}) : super(key: key);

  @override
  _BookscreenPastState createState() => _BookscreenPastState();
}

class _BookscreenPastState extends State<BookscreenPast> {
  bool livroAberto = false;
  int pagAberta = 1;

  void abrirLivro(){
    setState(() {
      livroAberto = true;
    });
  }

  Widget Pagina1(){
    return Row(
      children: [
        Expanded(
          child: Image.asset(
            'assets/pag1.png', 
            fit: BoxFit.contain, 
          ),
        ),
        IconButton(
          onPressed: (){
            setState(() {
              pagAberta = 2;
            });
          }, 
          icon: Icon(Icons.arrow_forward_ios_sharp)
        )
      ],
    );
  }

  Widget Pagina2(){
    return Row(
      children: [
        IconButton(
          onPressed: (){
            setState(() {
              pagAberta = 1;
            });
          }, 
          icon: Icon(Icons.arrow_back_ios_sharp)
        ),
        Expanded(
          child: Image.asset('assets/pag2.png', fit: BoxFit.contain,),
        ),
        IconButton(
          onPressed: (){
            setState(() {
              pagAberta = 3;
            });
          }, 
          icon: Icon(Icons.arrow_forward_ios_sharp))
      ],
    );
  }

  Widget Pagina3(){
    return Row(
      children: [
        IconButton(
          onPressed: (){
            setState(() {
              pagAberta = 2;
            });
          }, 
          icon: Icon(Icons.arrow_back_ios_sharp)
        ),
        Expanded(
          child: Image.asset('assets/pag3.png', fit: BoxFit.contain,)
        )
      ],
    );
  }

  void fecharLivro(){
    setState(() {
      livroAberto = false;
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
              'assets/cenaDireitaPassado2.png',
              fit: BoxFit.cover,
            ),
          ),
          IconeWidget(
            height: 0.55, 
            width: 0.47, 
            icone: Icons.remove_red_eye, 
            onTap: abrirLivro
          ),
          if(livroAberto)
            Positioned.fill(
              child: GestureDetector(
                onTap: fecharLivro,
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
                                  child: switch (pagAberta) {
                                    1 => Pagina1(),
                                    2 => Pagina2(),
                                    3 => Pagina3(),
                                    _ => Pagina1()
                                  }
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
          Lefticon(route: '/cena1passado10segundo'),
          Rigthicon(route: '/cenaTrasPassado10segundo')
        ],
      ),
    );
  }
}