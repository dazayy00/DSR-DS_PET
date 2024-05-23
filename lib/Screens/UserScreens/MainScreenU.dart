import 'package:flutter/material.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextFieldDefault.dart';
//import 'package:pet_plus_v01/Widgets/InitialButton.dart';
import '../Widgets/InitialButton.dart';

class Main_ScreenU extends StatelessWidget{
  String TextButton = 'Ver mi hogar';
  Color ButtonColor = Color(0xFFcae0c8);
  Color TextColor = Colors.black;
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //SizedBox(height: 25.0),
              const Spacer(
                flex: 1,
              ),
              Image(image: AssetImage('assets/image-removebg-preview.png')),
              
              Text(
                'PET+',
                style: TextStyle(fontSize: 20.0),
              ),
              const Spacer(
                flex: 1,
              ),
              //SizedBox(height: 175.0),
              Initial_Button(TextButton: 'Ver mi hogar', ruta:'/home'),

              SizedBox(height: 50),
            ],
          ),
      )
    );
  }
  
}