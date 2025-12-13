import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:torredorelogio/ComputerPuzzle/apps/Navegador.dart';

class Windows extends StatefulWidget {
  Windows({Key? key}) : super(key: key);
  
  @override
  _WindowsState createState() => _WindowsState();
}

class _WindowsState extends State<Windows> {
  bool showStartMenu = false;
  String currentTime = '';

  bool abrirApppSenha = false;

  void abrirAppSenha(){
    setState(() {
      abrirApppSenha = true;
    });
  }

  void fecharAppSenha(){
    setState(() {
      abrirApppSenha = false;
    });
  }


  @override
  void initState() {
    super.initState();
    _updateTime();
  }

  void _updateTime() {
    final now = DateTime.now();
    setState(() {
      currentTime =
          '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';
    });
    Future.delayed(const Duration(seconds: 1), _updateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if(!abrirApppSenha)
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF1e3a5f),
                  Color(0xFF2d5a8c),
                ],
              ),
            ),
          ),
          if(!abrirApppSenha)
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDesktopIcon(Icons.computer, 'Este Computador', (){}),
                  const SizedBox(height: 20),
                  _buildDesktopIcon(Icons.folder, 'Documentos', (){}),
                  const SizedBox(height: 20),
                  _buildDesktopIcon(Icons.delete, 'Lixeira',(){}),
                  const SizedBox(height: 20),
                  _buildDesktopIcon(Icons.image, 'Imagens', (){}),
                  const SizedBox(height: 20),
                  _buildDesktopIcon(Icons.lock, '???', abrirAppSenha),
                ],
              ),
            ),
          ),
          if (showStartMenu)
            Positioned(
              left: 0,
              bottom: 48,
              child: _buildStartMenu(),
            ),

          
          if(abrirApppSenha)
          Navegador(),


          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _buildTaskbar(),
          ),
        ],
      ),
    );
  }

  Widget _buildDesktopIcon(IconData icon, String label, VoidCallback onTap) {
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
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(
              icon,
              size: 48,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
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

  Widget _buildTaskbar() {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: const Color(0xFF1a1a1a).withOpacity(0.95),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Start Button
          InkWell(
            onTap: () {
              setState(() {
                showStartMenu = !showStartMenu;
              });
            },
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: showStartMenu
                    ? Colors.white.withOpacity(0.1)
                    : Colors.transparent,
              ),
              child: const Icon(
                Icons.window,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
          // Search Bar
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            width: 300,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Icon(
                    Icons.search,
                    color: Colors.white70,
                    size: 16,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Pesquisar',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Pinned Apps
          _buildTaskbarIcon(Icons.folder_open),
          _buildTaskbarIcon(Icons.language),
          _buildTaskbarIcon(Icons.mail),
          _buildTaskbarIcon(Icons.photo),
          const Spacer(),
          // System Tray
          _buildSystemTrayIcon(Icons.arrow_drop_up),
          _buildSystemTrayIcon(Icons.wifi),
          _buildSystemTrayIcon(Icons.volume_up),
          _buildSystemTrayIcon(Icons.battery_full),
          // Clock and Date
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  currentTime,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          // Notification Center
          InkWell(
            onTap: () {},
            child: Container(
              width: 32,
              height: 48,
              child: const Icon(
                Icons.notifications_none,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTaskbarIcon(IconData icon) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 48,
        height: 48,
        child: Icon(
          icon,
          color: Colors.white,
          size: 22,
        ),
      ),
    );
  }

  Widget _buildSystemTrayIcon(IconData icon) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 32,
        height: 48,
        child: Icon(
          icon,
          color: Colors.white,
          size: 18,
        ),
      ),
    );
  }

  Widget _buildStartMenu() {
    return Container(
      width: 600,
      height: 650,
      decoration: BoxDecoration(
        color: const Color(0xFF1a1a1a).withOpacity(0.95),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 20,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Column(
        children: [
          // Pinned Apps Section
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Fixados',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 6,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      children: [
                        _buildStartMenuItem(Icons.settings, 'Configurações'),
                        _buildStartMenuItem(Icons.folder, 'Explorador'),
                        _buildStartMenuItem(Icons.code, 'VS Code'),
                        _buildStartMenuItem(Icons.photo_library, 'Fotos'),
                        _buildStartMenuItem(Icons.calendar_today, 'Calendário'),
                        _buildStartMenuItem(Icons.mail, 'Email'),
                        _buildStartMenuItem(Icons.music_note, 'Música'),
                        _buildStartMenuItem(Icons.videocam, 'Vídeos'),
                        _buildStartMenuItem(Icons.shopping_cart, 'Store'),
                        _buildStartMenuItem(Icons.web, 'Edge'),
                        _buildStartMenuItem(Icons.calculate, 'Calculadora'),
                        _buildStartMenuItem(Icons.note, 'Notas'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Footer
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blue,
                  child: const Icon(Icons.person, color: Colors.white),
                ),
                const SizedBox(width: 12),
                const Text(
                  'Usuário',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.power_settings_new, color: Colors.white),
                  onPressed: () {
                    Navigator.pushNamed(context, '/segundoAndarPresente');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStartMenuItem(IconData icon, String label) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 32),
            const SizedBox(height: 4),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}