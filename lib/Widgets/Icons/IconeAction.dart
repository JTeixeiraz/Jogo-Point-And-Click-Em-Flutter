import 'package:flutter/material.dart';

class IconeWidget extends StatefulWidget {

  final double height;
  final double width;
  final IconData icone;
  final VoidCallback onTap;

  IconeWidget({
    Key? key,
     required this.height,
     required this.width,
     required this.icone,
     required this.onTap
  }) : super(key: key);

  @override
  _IconeWidgetState createState() => _IconeWidgetState();
}

class _IconeWidgetState extends State<IconeWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
            left: MediaQuery.of(context).size.width * widget.width, // localizacao na tela
            top: MediaQuery.of(context).size.height * widget.height,
            child: GestureDetector(
              onTap: widget.onTap,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.06, //tamanho do botao
                  height: MediaQuery.of(context).size.height * 0.10,
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.0),
                    border: Border.all(
                      color: Colors.amber.withOpacity(0.3),
                      width: 2, 
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  child: Center( // Icone
                    child: Icon(
                      widget.icone,
                      color: Colors.amber,
                      size: 32,
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}