import 'package:flutter/material.dart';
//import 'package:pet_plus_v01/Widgets/InitialButton.dart';
import '../Widgets/InitialButton.dart';

class Main_Screen extends StatelessWidget{
  String TextButton = '¡Empezar ahora!';
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
              Initial_Button(TextButton: '¡Empezar ahora!', ruta:'/TutorialScreen01'),

              SizedBox(height: 50),
            ],
          ),
      )
    );
  }
  
}