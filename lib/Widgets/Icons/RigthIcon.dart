import 'package:flutter/material.dart';

class Rigthicon extends StatelessWidget {
  final String route;

  const Rigthicon({
    Key? key,
    required this.route
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
            left: MediaQuery.of(context).size.width * 0.92, // localizacao na tela
            top: MediaQuery.of(context).size.height * 0.49,
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, this.route);
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Icon(
                      Icons.keyboard_arrow_right_sharp,
                      color: Colors.amber,
                      size: 32,
                    ),
              ),
            ),
          );
  }
}