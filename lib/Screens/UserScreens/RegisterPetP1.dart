import 'package:flutter/material.dart';
import 'package:pet_plus_ver01/Screens/Widgets/BackButtonWidget.dart';
import 'package:pet_plus_ver01/Screens/Widgets/CameraButton.dart';
import 'package:pet_plus_ver01/Screens/Widgets/ConfirmationButton.dart';
import 'package:pet_plus_ver01/Screens/Widgets/ListButton.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextButtonWidget.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextFieldDefault.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextPasswordDefault.dart';
import '../../Routes/IconSelector.dart';
import '../../Routes/ListRaceSelector.dart';

class Register_PetP1 extends StatefulWidget {
  @override
  State<Register_PetP1> createState() => _Register_PetP1State();
}

class _Register_PetP1State extends State<Register_PetP1> {
  //const Register_Cat({super.key});
  TextEditingController _controller1 = TextEditingController();
  
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller1.dispose();
    super.dispose();
  }

  List<String>? inputT = [];
  String? input = '';

  void _saveTexts(){
    
    setState(() {
      input = _controller1.text;
    });
  }

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
                  AssetPaths.getPath(13),
                  width: 100.0,
            height: 100.0,
          ),

                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
        
                TextField_Default(TextTf: 'Código', ruta: 14,
                controller: _controller1,
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                
                Camera_Button(),
                
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                ),

                Confirmation_Button(TextButton: 'Buscar', 
                additionalFunction: _saveTexts, 
                ruta: '/RegisterPetP2', 
                Text_Field: 'ConnectM',
                savedCodeT: _controller1,
                ),
        
              ],
          ),
        ),
      ),
    );
  }
}