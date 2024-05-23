import 'package:flutter/material.dart';
import 'package:pet_plus_ver01/Dat/Models/UserModels.dart';
import 'package:pet_plus_ver01/Dat/UseCases/toJSON.dart';
import 'package:pet_plus_ver01/Screens/FirstTime/TutorialScreen01.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pet_plus_ver01/Screens/Widgets/FailNotification%20.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Confirmation_Button extends StatelessWidget{
  //String TextButton = '¡Empezar ahora!';
  String TextButton = '...';
  bool ActivateButton;

  String? Text_Field;
  List<String>? inputTexts;
  final String? ruta;
  final VoidCallback? additionalFunction;

  Color ButtonColor = Color(0xFFe8e7d2);
  Color TextColor = Colors.black;
  int i = 0;

  Confirmation_Button({required this.TextButton, this.ruta, this.ActivateButton=true, 
  this.Text_Field, 
  this.inputTexts, 
  this.additionalFunction,
  });
  
  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: ActivateButton ? () async {
        print('Botón presionado');

        if (additionalFunction != null) {
          additionalFunction!();
        }

        //await
        if (ruta != null) {
          Navigator.pushNamed(context, ruta!);
        }
        if (Text_Field != null){
          if (Text_Field == 'CU') {
          // Ejecuta la función pasada como argumento
          for (i ; i < inputTexts!.length; i++) {
          String text = inputTexts![i];
          if (text.isEmpty) {
            // Mostrar mensaje si algún TextField está vacío
            showDialog(
            context: context,
            builder: (context) => Fail_Notification(tituloFN: 'Error', 
            mensajeFN: 'Haz dejado un espacio en blanco',)
          );
            return;
          } else {
            // Imprimir el texto en la consola si no está vacío
            print('Texto ingresado en TextField ${i + 1}: $text');
          }
          
        }
        Map<String, dynamic> jsonData = tJCreateAccount(
            inputTexts![2], 
            inputTexts![0], 
            inputTexts![1], 
            inputTexts![3], 
            inputTexts![4]
            );

          CreateAccount('https://eouww9yquk.execute-api.us-east-1.amazonaws.com/user/add', 
          //tJCreateAccount(inputTexts![0], inputTexts![1], inputTexts![2], inputTexts![3], inputTexts![4])
          jsonData
          );
          
          inputTexts!.clear();
          i=0;

          
          }else if (Text_Field == 'CM'){
          for (i; i < inputTexts!.length; i++) {
          String text = inputTexts![i];
          if (text.isEmpty) {
            // Mostrar mensaje si algún TextField está vacío
            showDialog(
            context: context,
            builder: (context) => Fail_Notification(tituloFN: 'Error', 
            mensajeFN: 'Haz dejado un espacio en blanco para tu mascota',)
          );
            return;
          } else {
            // Imprimir el texto en la consola si no está vacío
            print('Texto ingresado en RegisterCat ${i + 1}: $text');
          }
          
        }
        Map<String, dynamic> jsonDataP = tJCreatePet(
            inputTexts![0], 
            inputTexts![1], 
            inputTexts![2], 
            inputTexts![3], 
            inputTexts![4]
            );

          CreatePet('https://eouww9yquk.execute-api.us-east-1.amazonaws.com/pets/add_pet', 
          jsonDataP
          );

          inputTexts!.clear();
          i=0;
        };
        }

        
        
      } : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: ButtonColor,
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