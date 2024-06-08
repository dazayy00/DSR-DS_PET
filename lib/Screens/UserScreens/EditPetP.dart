import 'package:flutter/material.dart';
import 'package:pet_plus_ver01/Routes/CatOwnerSelector.dart';
import 'package:pet_plus_ver01/Routes/ListFoodType.dart';
import 'package:pet_plus_ver01/Screens/Widgets/BackButtonWidget.dart';
import 'package:pet_plus_ver01/Screens/Widgets/ConfirmationButton.dart';
import 'package:pet_plus_ver01/Screens/Widgets/ListButton.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextButtonWidget.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextFieldDefault.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextPasswordDefault.dart';
import '../../Routes/IconSelector.dart';
import '../../Routes/ListFoodSelector.dart';

class Edit_PetP extends StatelessWidget {
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
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 250.0, 0.0),
                  child: Back_Button_Widget(),
                ),
                
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 0.0),
                ),

                Image.asset(
                  AssetPaths.getPath(12),
            width: 100.0,
            height: 100.0,
          ),

                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
        
                TextField_Default(TextTf: 'Habitacion', ruta: 1,),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
        
                List_Button_Widget(ruta: 11, lista: Food_Selector,
                pathtype: '_',
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),

                List_Button_Widget(ruta: 8, lista: Cat_Owner_Selector,
                pathtype: '_',
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
        
                /*TextField_Default(TextTf: 'Raza', ruta: 8,),
                
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                ),*/

                Confirmation_Button(TextButton: 'Confirmar'),

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