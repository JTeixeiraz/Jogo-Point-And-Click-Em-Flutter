import 'package:flutter/material.dart';
import 'package:torredorelogio/screens/10past/FrontDoorPast10.dart';
import 'package:torredorelogio/screens/10past/floor1/FirstSceneFloor1.dart';
import 'package:torredorelogio/screens/10past/floor1/GoOutDoorPast10.dart';
import 'package:torredorelogio/screens/10past/floor1/LittleBoxScene.dart';
import 'package:torredorelogio/screens/10past/floor1/OpenedBox.dart';
import 'package:torredorelogio/screens/10past/floor1/PaintingPast10.dart';
import 'package:torredorelogio/screens/front_door.dart';
import 'package:torredorelogio/screens/present/floor1Scenes/Painting_scene.dart';
import 'package:torredorelogio/screens/present/floor1Scenes/doorPov_scene.dart';
import 'package:torredorelogio/screens/present/floor1Scenes/presentBoxTable.dart';
import 'package:torredorelogio/screens/present/inside_floor1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Torre Do Relogio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF10141F),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FrontDoor(),
        '/interiorPresenteRadio': (context) => InsideFloor1(),
        '/interiorPresentePintura': (context) => PaintingScene(),
        '/doorPovPresente': (context) => DoorpovScene(),
        '/tableBoxPresente': (context) => Presentboxtable(),
        '/passado10': (context) => Frontdoorpast10(),
        '/passado10Floor1': (context) => Firstscenefloor1(),
        '/passado10LittleBox': (context) => Littleboxscene(),
        '/passado10PortaIrEmBora': (context) => Gooutdoorpast10(),
        '/passado10Pintura': (context) => Paintingpast10(),
        '/caixaAberta': (context) => Openedbox(),
        

      },
    );
  }
}
