import 'package:flutter/material.dart';

class Navegador extends StatefulWidget {
  Navegador({Key? key}) : super(key: key);
  
  @override
  _NavegadorState createState() => _NavegadorState();
}

class _NavegadorState extends State<Navegador> {
  final TextEditingController _urlController = TextEditingController();
  String currentUrl = 'https://www.google.com';
  
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
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // Barra de navegação superior
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
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
                            colors: [Color(0xFF4285F4), Color(0xFF34A853)],
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
                        'WebExplorer',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4285F4),
                        ),
                      ),
                      const SizedBox(width: 16),
                      IconButton(
                        icon: const Icon(Icons.home),
                        onPressed: () {
                          setState(() {
                            currentUrl = 'https://www.google.com';
                            _urlController.text = currentUrl;
                          });
                        },
                        tooltip: 'Página inicial',
                      ),
                      IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/windows');
                        }, 
                        icon: const Icon(Icons.close)
                      ),
                      const Spacer(),
                      // Botões de usuário
                      IconButton(
                        icon: const Icon(Icons.bookmark_border),
                        onPressed: () {},
                        tooltip: 'Favoritos',
                      ),
                      IconButton(
                        icon: const Icon(Icons.download),
                        onPressed: () {},
                        tooltip: 'Downloads',
                      ),
                      IconButton(
                        icon: const Icon(Icons.more_vert),
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
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey[300]!,
                              width: 1,
                            ),
                          ),
                          child: TextField(
                            controller: _urlController,
                            decoration: InputDecoration(
                              hintText: 'Pesquisar ou digitar URL',
                              hintStyle: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 14,
                              ),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.grey[600],
                                size: 18,
                              ),
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.star_border,
                                      color: Colors.grey[600],
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
                              color: Colors.black
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
                        backgroundColor: Colors.blue[100],
                        child: const Icon(
                          Icons.person,
                          color: Color(0xFF4285F4),
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
              color: Colors.grey[200],
              child: Row(
                children: [
                  _buildTab('Nova aba', true),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.add, size: 18),
                    onPressed: () {},
                    tooltip: 'Nova aba',
                  ),
                ],
              ),
            ),
            // Área de conteúdo
            Expanded(
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF4285F4).withOpacity(0.1),
                              Color(0xFF34A853).withOpacity(0.1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Icon(
                          Icons.language,
                          size: 80,
                          color: Color(0xFF4285F4),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'WebExplorer',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Navegue na web com segurança',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 32),
                      Text(
                        'URL atual: $currentUrl',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildTab(String title, bool isActive) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.transparent,
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
            color: isActive ? const Color(0xFF4285F4) : Colors.grey[600],
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 13,
              color: isActive ? Colors.black87 : Colors.grey[600],
              fontWeight: isActive ? FontWeight.w500 : FontWeight.normal,
            ),
          ),
          const SizedBox(width: 8),
          Icon(
            Icons.close,
            size: 16,
            color: Colors.grey[600],
          ),
        ],
      ),
    );
  }
}