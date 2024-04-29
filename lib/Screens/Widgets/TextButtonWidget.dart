import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {

  final String texto;
  final Color color;
  final String? ruta;
  final String? atras;
  
  //TextButtonWidget({required this.texto, required this.color,});

  const TextButtonWidget({
    Key? key,
    required this.texto,
    required this.color,
    this.ruta,
    this.atras
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print('Botón Texto');
        if (ruta != null) {
          Navigator.pushNamed(context, ruta!);
        }else if (atras == atras){
          Navigator.pop(context);
        }
        },
      child: Text(
        texto,
        style: TextStyle(color: color),
        
      ),
    );
  }
}