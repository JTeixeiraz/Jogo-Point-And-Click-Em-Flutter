import 'package:flutter/material.dart';
import 'package:torredorelogio/ComputerPuzzle/Windows.dart';
import 'package:torredorelogio/ComputerPuzzle/apps/Navegador.dart';
import 'package:torredorelogio/screens/100past/onlyPast100.dart';
import 'package:torredorelogio/screens/10past/FrontDoorPast10.dart';
import 'package:torredorelogio/screens/10past/floor1/FirstSceneFloor1.dart';
import 'package:torredorelogio/screens/10past/floor1/GoOutDoorPast10.dart';
import 'package:torredorelogio/screens/10past/floor1/LittleBoxScene.dart';
import 'package:torredorelogio/screens/10past/floor1/OpenedBox.dart';
import 'package:torredorelogio/screens/10past/floor1/PaintingPast10.dart';
import 'package:torredorelogio/screens/10past/floor2/bookScreen.dart';
import 'package:torredorelogio/screens/10past/floor2/computerScene.dart';
import 'package:torredorelogio/screens/10past/floor2/paredeScreen.dart';
import 'package:torredorelogio/screens/10past/floor2/portaSaidaScreen.dart';
import 'package:torredorelogio/screens/10past/floor3/paredeVaziaPassado.dart';
import 'package:torredorelogio/screens/10past/floor3/portaSairPassado.dart';
import 'package:torredorelogio/screens/10past/floor3/visaoImagensPassado.dart';
import 'package:torredorelogio/screens/10past/floor3/visaoRelogioPassado.dart';
import 'package:torredorelogio/screens/front_door.dart';
import 'package:torredorelogio/screens/present/floor1Scenes/Painting_scene.dart';
import 'package:torredorelogio/screens/present/floor1Scenes/doorPov_scene.dart';
import 'package:torredorelogio/screens/present/floor1Scenes/presentBoxTable.dart';
import 'package:torredorelogio/screens/present/floor2Scenes/firstSceneFloor2.dart';
import 'package:torredorelogio/screens/present/floor2Scenes/fourthScreenFloor2.dart';
import 'package:torredorelogio/screens/present/floor2Scenes/seconfSceneFloor2.dart';
import 'package:torredorelogio/screens/present/floor2Scenes/thirdSceneFloor2.dart';
import 'package:torredorelogio/screens/present/floor3Scenes/aloneWall.dart';
import 'package:torredorelogio/screens/present/floor3Scenes/firstSceneFloor3.dart';
import 'package:torredorelogio/screens/present/floor3Scenes/paredeImagens.dart';
import 'package:torredorelogio/screens/present/floor3Scenes/paredeSair.dart';
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
      scaffoldBackgroundColor: const Color(0xFF10141F)
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
        '/segundoAndarPresente': (context) => Firstscenefloor2(),
        '/segundoAndarEsquerda': (context) => Seconfscenefloor2(),
        '/segundoAndarDireita': (context) => Thirdscenefloor2(),
        '/segundoAndarTras': (context) => Fourthscreenfloor2(),
        '/windows': (context) => Windows(),
        '/navegador': (context) =>Navegador(),
        //passadoSegundoAndar
        '/cena1passado10segundo': (context) => ComputerscenePast(),
        '/cenaDireitaPassado10segundo': (context) => BookscreenPast(),
        '/cenaEsquerdaPassado10segundo': (context) => Paredescreenpast(),
        '/cenaTrasPassado10segundo': (context) => PortasaidascreenPast(),
        //presente terceiro andar
        '/presenteTerceiroAndar': (context) => Firstscenefloor3(),
        '/presenteTerceiroAndarSair': (context) => Paredesair(),
        '/paredeVazia': (context) => Alonewall(),
        '/paredeImagem': (context) => Paredeimagens(),
        //passado terceiro andar
        '/passadoTerceiroAndar': (context) => Visaorelogiopassado(),
        '/paredeVaziaPassado': (context) => Paredevaziapassado(),
        '/paredeImagensPassado': (context) => Visaoimagenspassado(),
        '/paredeSairPassado': (context) => Portasairpassado(),
        '/passado100': (context) => Onlypast100()
      },
    );
  }
}
