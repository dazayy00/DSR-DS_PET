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
  //bool RestrictedRoute;

  String? Text_Field;
  List<String>? inputTexts;
  final String? ruta;
  final VoidCallback? additionalFunction;

  Color ButtonColor = Color(0xFFe8e7d2);
  Color TextColor = Colors.black;
  int i = 0;

  Confirmation_Button({required this.TextButton, this.ruta, this.ActivateButton=true, 
  //required this.RestrictedRoute,
  this.Text_Field, 
  this.inputTexts, 
  this.additionalFunction,
  });
  
  @override
  Widget build(BuildContext context){
    bool nextB;

    return ElevatedButton(
      onPressed: ActivateButton ? () async {
        print('Botón presionado');

        if (additionalFunction != null) {
          additionalFunction!();

          ///
          

        }

        /*
        //await
        if (ruta != null) {
          Navigator.pushNamed(context, ruta!);
        }
        */
        await Future.delayed(Duration(seconds: 2));
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
          print('Vacio');
          nextB = false;
            //return;
            break;
          } else {
            // Imprimir el texto en la consola si no está vacío
            print('Texto ingresado en TextField ${i + 1}: $text');
            nextB = true;
          }
          
          if(nextB == true){
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
          if (ruta != null) {
          Navigator.pushNamed(context, ruta!);
        }
          }else{
            print('Proceso detenido');
          };
        }
        
          
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
          nextB = false;
            //return;
            break;
          } else {
            // Imprimir el texto en la consola si no está vacío
            print('Texto ingresado en RegisterCat ${i + 1}: $text');
            nextB = true;
          }

          if(nextB == true){
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
          if (ruta != null) {
          Navigator.pushNamed(context, ruta!);
          }else{
            print('Proceso detenido');
          }
          
        }
        
        }
        }else if(Text_Field == 'EU'){
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
          print('Vacio');
          nextB = false;
            //return;
            break;
          } else {
            // Imprimir el texto en la consola si no está vacío
            print('Texto ingresado en Editar Usuario ${i + 1}: $text');
            nextB = true;
          }
          
          if(nextB == true){
            Map<String, dynamic> jsonData = tJEditAccount(
            inputTexts![2], 
            inputTexts![0], 
            inputTexts![1], 
            inputTexts![3], 
            inputTexts![4],
            );

            EdditAccount(inputTexts![5], 
            jsonData);
          
          inputTexts!.clear();
          i=0;
          if (ruta != null) {
          Navigator.pushNamed(context, ruta!);
        }
          }else{
            print('Proceso detenido');
          }
        }
        
        }else if(Text_Field == 'IS') {
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
          print('Vacio');
          nextB = false;
            //return;
            break;
          } else {
            // Imprimir el texto en la consola si no está vacío
            print('Texto ingresado en TextField ${i + 1}: $text');
            nextB = true;
          }

          if(nextB == true){
          Map<String, dynamic> jsonData = tJLogIn(
            inputTexts![0], 
            inputTexts![1], 
            );

            dataLogIn('https://eouww9yquk.execute-api.us-east-1.amazonaws.com/user/login', 
            jsonData);
          
          inputTexts!.clear();
          i=0;
          if (ruta != null) {
          Navigator.pushNamed(context, ruta!);
        }
          };
          
        }

        
        }else{
          print('object');
        }
        }else{
          print('');
          Navigator.pushNamed(context, ruta!);
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