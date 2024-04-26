import 'package:flutter/material.dart';

class Delete extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const Delete({Key? key, required this.buttonText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonText),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red, // Cambia el color del botón a rojo
        textStyle: TextStyle(fontSize: 16),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
      ),
    );
  }
}
