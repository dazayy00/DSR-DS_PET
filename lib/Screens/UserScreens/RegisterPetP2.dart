import 'package:flutter/material.dart';
import 'package:pet_plus_ver01/Routes/CatOwnerSelector.dart';
import 'package:pet_plus_ver01/Screens/Widgets/BackButtonWidget.dart';
import 'package:pet_plus_ver01/Screens/Widgets/ConfirmationButton.dart';
import 'package:pet_plus_ver01/Screens/Widgets/ListButton.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextButtonWidget.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextFieldDefault.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextPasswordDefault.dart';
import '../../Routes/IconSelector.dart';
import '../../Routes/ListRaceSelector.dart';

class Register_PetP2 extends StatelessWidget {
  //const Register_PetP({super.key});
  Color colora = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 0.0),
                ),

                Image.asset(
                  AssetPaths.getPath(10),
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
        
                TextField_Default(TextTf: 'Alimento', ruta: 11,),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),

                List_Button_Widget(ruta: 8, lista: Cat_Owner_Selector,),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
        
                /*TextField_Default(TextTf: 'Raza', ruta: 8,),
                
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                ),*/

                Confirmation_Button(TextButton: 'Confirmar'),

                TextButtonWidget(texto: 'Cancelar', color: Colors.red, atras: 'atras',),

                Padding(
                  padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 0.0),
                  
                ),
                

              ],
          ),
        ),
      ),
    );
  }
}