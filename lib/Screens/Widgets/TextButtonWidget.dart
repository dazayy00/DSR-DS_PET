import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {

  final String texto;
  final Color color;
  //TextButtonWidget({required this.texto, required this.color,});

  const TextButtonWidget({
    Key? key,
    required this.texto,
    required this.color,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Aquí se imprime el mensaje en la consola antes de ejecutar la función onPressed
        print('Botón Texto');},
      child: Text(
        texto,
        style: TextStyle(color: color),
        
      ),
    );
  }
}