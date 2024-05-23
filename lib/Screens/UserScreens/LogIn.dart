import 'package:flutter/material.dart';
import '../../Routes/IconSelector.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextFieldDefault.dart';
import 'package:pet_plus_ver01/Screens/Widgets/BackButtonWidget.dart';
import 'package:pet_plus_ver01/Screens/Widgets/ConfirmationButton.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextPasswordDefault.dart';

class Log_In extends StatelessWidget {
  const Log_In({super.key});

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
                
                
                
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 0.0),
                ),

                Image.asset(
                  'assets/usuario.png',
                  width: 100.0,
            height: 100.0,
          ),

                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
        
                TextField_Default(TextTf: 'Usuario', ruta: 3,),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),

                TextPassword_Default(TextTf: 'Contraseña', ruta: 6),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),

                Confirmation_Button(TextButton: 'Iniciar Sesion', ruta: '/home',),

              ]
          ),
        ),
      ),
    );
  }
}
//Añadir un boton + en home y una lista para leer cuantos Pet+ 
//tiene y desplegarlos en la pantalla