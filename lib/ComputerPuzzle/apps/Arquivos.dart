import 'package:flutter/material.dart';
import 'package:torredorelogio/ComputerPuzzle/ArquiveModels/textArquive.dart';

class Arquivos extends StatefulWidget {
  Arquivos({Key? key}) : super(key: key);

  @override
  _ArquivosState createState() => _ArquivosState();
}

class _ArquivosState extends State<Arquivos> {

  Widget arquive = Container();

  bool arquivoAberto = false;


  Widget verArquivoAberto(){
    return arquive;
  }

  void abrirArquivo(){
    setState(() {
      arquivoAberto = true;
    });
  }

  void fecharArquivo(){
    setState(() {
      arquivoAberto = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2)
                )
              ]
            ),
            child: Column(
              children: [
                Row(
                 children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [Color.fromARGB(255, 0, 0, 0), Color.fromARGB(255, 56, 56, 56)]),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: const Icon(
                      Icons.folder,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 8,),
                  IconButton(
                    onPressed: (){
                      if(arquivoAberto){
                        fecharArquivo();
                      }else{
                        Navigator.pushNamed(context, "/windows");
                      }
                    }, 
                    icon: Icon(Icons.close)
                  ),
                 ], 
                )
              ],
            ),
          ),
          if(!arquivoAberto)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    _buildExplorerIcon(Icons.file_present, "???", () {
                      abrirArquivo();
                      arquive = Textarquive(content: "estigma.web");
                    },)
                  ],
                )
              ],
            ),
          ),


          if(arquivoAberto)
          verArquivoAberto()
        ],
      ),
    );
  }
}

Widget _buildExplorerIcon(IconData icon, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      width: 80,
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(
              icon,
              size: 48,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(1, 1),
                  blurRadius: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }