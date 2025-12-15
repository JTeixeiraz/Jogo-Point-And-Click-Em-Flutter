import 'package:flutter/material.dart';

class Pecado extends StatefulWidget {
  Pecado({Key? key}) : super(key: key);

  @override
  _PecadoState createState() => _PecadoState();
}

class _PecadoState extends State<Pecado> {

  final TextEditingController _senhaController = TextEditingController();
  
  int fase = 1;
  String img = "assets/pecado.png";
  String hint = "Senha...";
  bool errou = false;

  void passarDeFase(String senha){
    if(senha == "carne"){
      setState(() {
        img = 'assets/twitter.png';
        fase = 2;
        errou = false;
        _senhaController.text = "";
        hint = "oromo";
      });
    }else{
      setState(() {
        errou = true;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(60),
       child: Column(
        children: [
          if(fase == 1)
          Image.asset(img),

          if(fase == 2)
          Row(
            children: [
              Image.asset(img),
              SelectableText("01000000 01010011 01100101 01110100 01110101 01110110 01000010 01110101 01110010 01100001 01101101", style: TextStyle(color: Colors.black),)
            ],
          ),
          if(fase == 2)
          Text(hint, style: TextStyle(color: Colors.white),),

          if(fase == 1)
          TextField(
            controller: _senhaController,
            decoration: InputDecoration(
                hint: Text(hint, style: TextStyle(color: Colors.white),),
                
              ),
              style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30,),
          if(fase == 1)
          ElevatedButton(  
          onPressed: (){
            passarDeFase(_senhaController.text);
          }, child: Text("Responder", style: TextStyle(color: Colors.white),)),
          const SizedBox(height: 30,),
          if(errou)
          Text("Não.", style: TextStyle(color: Colors.red),)
        ],
       ),
    );
  }
}