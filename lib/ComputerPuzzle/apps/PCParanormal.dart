import 'package:flutter/material.dart';
import 'package:torredorelogio/ComputerPuzzle/secret/culpa.dart';
import 'package:torredorelogio/ComputerPuzzle/secret/mainSecret.dart';
import 'package:torredorelogio/ComputerPuzzle/secret/praga.dart';
import 'package:torredorelogio/ComputerPuzzle/secret/religiao.dart';
import 'package:torredorelogio/ComputerPuzzle/secret/sombra.dart';

class Pcparanormal extends StatefulWidget {
  Pcparanormal({Key? key}) : super(key: key);
  
  @override
  _PcparanormalState createState() => _PcparanormalState();
}

class _PcparanormalState extends State<Pcparanormal> with SingleTickerProviderStateMixin {
  final TextEditingController _urlController = TextEditingController();
  String currentUrl = 'https://darkweb';
  String nomeAba = "Nova Aba";
  Color bakground = const Color(0xFF1A237E); // Azul escuro de fundo

  void Pesquisar(String url){
    switch (url.toLowerCase()) {
      case "praga.darkweb":
        setState(() {
          currentUrl = "praga.darkweb";
          nomeAba = "Escute";
          site = Praga();
        });
        break;
      case "culpa.darkweb":
        setState(() {
          currentUrl = "culpa.darkweb";
          nomeAba = "Alma";
          site = Culpa();
        });
      break;
      case "guilt.darkweb":
        setState(() {
          currentUrl = "culpa.darkweb";
          nomeAba = "Alma";
          site = Culpa();
        });
      break;
      case "religiao.darkweb":
        setState(() {
          currentUrl = "religiao.darkweb";
          nomeAba = "Religiao";
          site = Religiao();
        });
      break;
      case "sombra.darkweb":
        setState(() {
          currentUrl = "sombra.darkweb";
          nomeAba = "Sombra";
          site = Sombra();
        });
      break;
      case "sombras.darkweb":
        setState(() {
          currentUrl = "sombra.darkweb";
          nomeAba = "Sombra";
          site = Sombra();
        });
      break;
      default:
    }
  }

  Widget site = Mainsecret();

  Widget siteAberto(){
    return site;
  }

  @override
  void initState() {
    super.initState();
    _urlController.text = currentUrl;
  }
  
  @override
  void dispose() {
    _urlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Scaffold(
        backgroundColor: this.bakground,
        body: Column(
          children: [
            // Barra de navegação superior
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFF283593), // Azul escuro
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Primeira linha: Logo e controles
                  Row(
                    children: [
                      // Logo fictícia
                      Container(  
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF5C6BC0), Color(0xFF7986CB)],
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.language,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'DarkWeb',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF9FA8DA), // Azul claro
                        ),
                      ),
                      const SizedBox(width: 16),
                      IconButton(
                        icon: const Icon(Icons.home, color: Colors.white70),
                        onPressed: () {
                          setState(() {
                            currentUrl = 'https://darkweb';
                            _urlController.text = currentUrl;
                          });
                        },
                        tooltip: 'Página inicial',
                      ),
                      IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/windows');
                        }, 
                        icon: const Icon(Icons.close, color: Colors.white70)
                      ),
                      const Spacer(),
                      // Botões de usuário
                      IconButton(
                        icon: const Icon(Icons.bookmark_border, color: Colors.white70),
                        onPressed: () {},
                        tooltip: 'Favoritos',
                      ),
                      IconButton(
                        icon: const Icon(Icons.download, color: Colors.white70),
                        onPressed: () {},
                        tooltip: 'Downloads',
                      ),
                      IconButton(
                        icon: const Icon(Icons.more_vert, color: Colors.white70),
                        onPressed: () {},
                        tooltip: 'Mais opções',
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Segunda linha: Barra de endereço
                  Row(
                    children: [
                      // Campo de URL
                      Expanded(
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFF3F51B5), // Azul médio
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: const Color(0xFF5C6BC0),
                              width: 1,
                            ),
                          ),
                          child: TextField(
                            controller: _urlController,
                            decoration: InputDecoration(
                              hintText: 'Pesquisar ou digitar URL',
                              hintStyle: const TextStyle(
                                color: Color(0xFF9FA8DA),
                                fontSize: 14,
                              ),
                              prefixIcon: const Icon(
                                Icons.lock_outline,
                                color: Color(0xFFC5CAE9),
                                size: 18,
                              ),
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Pesquisar(_urlController.text);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF5C6BC0),
                                      foregroundColor: Colors.white,
                                    ),
                                    child: const Text("Pesquisar", style: TextStyle(color: Colors.white)),
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.star_border,
                                      color: Color(0xFFC5CAE9),
                                      size: 20,
                                    ),
                                    onPressed: () {},
                                    tooltip: 'Adicionar aos favoritos',
                                  ),
                                ],
                              ),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 10,
                              ),
                            ),
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white
                            ),
                            onSubmitted: (value) {
                              setState(() {
                                currentUrl = value;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      // Botão de perfil
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: const Color(0xFF5C6BC0),
                        child: const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Barra de abas
            Container(
              height: 36,
              color: const Color(0xFF303F9F), // Azul escuro
              child: Row(
                children: [
                  _buildTab(this.nomeAba, true),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.add, size: 18, color: Colors.white70),
                    onPressed: () {},
                    tooltip: 'Nova aba',
                  ),
                ],
              ),
            ),
            // Área de conteúdo
            siteAberto()
          ],
        ),
      ),
    );
  }
  
  Widget _buildTab(String title, bool isActive) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF3F51B5) : Colors.transparent,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.language,
            size: 16,
            color: isActive ? const Color(0xFF9FA8DA) : Colors.white54,
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 13,
              color: isActive ? Colors.white : Colors.white54,
              fontWeight: isActive ? FontWeight.w500 : FontWeight.normal,
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            alignment: Alignment.topCenter,
            icon: const Icon(Icons.close, size: 16),
            onPressed: () {
              Navigator.pushNamed(context, "/windows");
            },
            color: Colors.white54,
          ),
        ],
      ),
    );
  }
}