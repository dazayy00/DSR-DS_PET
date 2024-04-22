import 'package:flutter/material.dart';
import 'package:pet_plus_ver01/Screens/FirstTime/TutorialScreen01.dart';

class Initial_Button extends StatelessWidget{
  //String TextButton = '¡Empezar ahora!';
  String TextButton = '...';
  final String? ruta;

  Color ButtonColor = Color(0xFFcae0c8);
  Color TextColor = Colors.black;

  Initial_Button({required this.TextButton, this.ruta});
  
  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: () {
        print('Botón Elevado presionado');
        if (ruta != null) {
          Navigator.pushNamed(context, ruta!);
        }
        
      },
        style: ElevatedButton.styleFrom(
          backgroundColor: ButtonColor,
          elevation: 5,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(25.0),
            ),
        ),
            
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Ajusta el espacio aquí según sea necesario
              child: Text(TextButton,
              style: TextStyle(fontSize: 20.0, 
              color: TextColor,),
              ),
            ),
      );
  }
  
}