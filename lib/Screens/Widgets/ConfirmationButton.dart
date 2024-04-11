import 'package:flutter/material.dart';
import 'package:pet_plus_ver01/Screens/FirstTime/TutorialScreen01.dart';

class Confirmation_Button extends StatelessWidget{
  //String TextButton = '¡Empezar ahora!';
  String TextButton = '...';
  final String? ruta;
  bool ActivateButton;

  Color ButtonColor = Color(0xFFe8e7d2);
  Color TextColor = Colors.black;

  Confirmation_Button({required this.TextButton, this.ruta, this.ActivateButton=true});
  
  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: ActivateButton ? () {
        print('Botón presionado');
        if (ruta != null) {
          Navigator.pushNamed(context, ruta!);
        }
      } : null,
        style: ElevatedButton.styleFrom(
          primary: ButtonColor,
          elevation: 5,
          shape: RoundedRectangleBorder(
            //side: BorderSide(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(25.0),
            ),
        ),
            
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0), // Ajusta el espacio aquí según sea necesario
              child: Text(TextButton,
              style: TextStyle(fontSize: 15.0, 
              color: TextColor,),
              ),
            ),
      );
  }
  
}