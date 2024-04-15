import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Aquí se imprime el mensaje en la consola antes de ejecutar la función onPressed
        print('Botón Texto');},
      child: Text(
        'texto',
        style: TextStyle(color: Color(0xFFe8e7d2),),
        
      ),
    );
  }
}