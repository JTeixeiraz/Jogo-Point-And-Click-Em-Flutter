import 'package:flutter/material.dart';
import 'package:torredorelogio/service/SaveFile.dart';

class Culpa extends StatefulWidget {
  Culpa({Key? key}) : super(key: key);

  @override
  _CulpaState createState() => _CulpaState();
}

class _CulpaState extends State<Culpa> {
  final TextEditingController resposta = new TextEditingController();
  int fase = 1;
  Savefile save = new Savefile();


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
       child: Column(
        children: [
          if(fase == 1)
          Column(
            children: [
              Text("7777666333777444633668666", style: TextStyle(color: Colors.white),),
              TextField(
                controller: resposta,
                decoration: InputDecoration(
                  hint: Text("...")
                ),
              ),
              const SizedBox(height: 120,),
              ElevatedButton(
                onPressed: () {
                  if (resposta.text.toLowerCase() == "sofrimento") {
                    setState(() {
                      fase = 2;
                    });
                  }  
                }, child: Text("Verificar", style: TextStyle(color: Colors.white),))
            ],
          ),

          if(fase == 2)
          SingleChildScrollView(
            child: Row(
            children: [
              Image.asset(
                'assets/Antonio_Rotta01.jpg',
              ),
              IconButton(
                onPressed: () {
                  save.saveFile("assets/Antonio_Rotta01.jpg", "alma.jpg");
                }, 
                icon: Icon(Icons.download))
            ],
          ),
          )
        ],
       )
    );
  }
}