import 'package:flutter/material.dart';
import 'package:pet_plus_ver01/Screens/Widgets/BackButtonWidget.dart';
import 'package:pet_plus_ver01/Screens/Widgets/ConfirmationButton.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextButtonWidget.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextFieldDefault.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextPasswordDefault.dart';

class Edit_Account extends StatelessWidget {
  //const Create_Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 250.0, 0.0),
                  child: Back_Button_Widget(),
                ),

                Image.asset(
            'assets/usuario.png', // Ruta de la imagen
            width: 100.0,
            height: 100.0,
          ),

                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
        
                TextField_Default(TextTf: 'Nombre', ruta: 1,),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
        
                TextField_Default(TextTf: 'Apellido', ruta: 2,),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
        
                TextField_Default(TextTf: 'Nombre de Usuario', ruta: 3,),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
        
                TextField_Default(TextTf: 'Dirección de Correo', ruta: 4,),
                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
        
                TextPassword_Default(TextTf: 'Contraseña', ruta: 5,),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
        
                TextPassword_Default(TextTf: 'Confirmación de Contraseña', ruta: 6,),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                
                Confirmation_Button(TextButton: 'Guardar', ruta: '/home',),
                
        
              ],
          ),
        ),
      ),
    );
  }
}