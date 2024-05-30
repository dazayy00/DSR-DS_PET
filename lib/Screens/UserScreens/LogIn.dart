import 'package:flutter/material.dart';
import '../../Routes/IconSelector.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextFieldDefault.dart';
import 'package:pet_plus_ver01/Screens/Widgets/BackButtonWidget.dart';
import 'package:pet_plus_ver01/Screens/Widgets/ConfirmationButton.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextPasswordDefault.dart';

class Log_In extends StatefulWidget {
  const Log_In({super.key});

  @override
  State<Log_In> createState() => _Log_InState();
}

class _Log_InState extends State<Log_In> {
  bool? _result = false;
  String result = '';
  String mensage = '';
  List<String>? inputT = [];

  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  
  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  void _sendLI(){
    setState(() {
      result = '==';
      _result = true;
      List<String> FieldT = [_controller1.text, _controller2.text];
      for (var texto in FieldT) {
        inputT!.add(texto);
        }
      });
    }
  

  //

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
        
                TextField_Default(TextTf: 'Usuario', ruta: 3,
                controller: _controller1,
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),

                TextPassword_Default(TextTf: 'Contraseña', ruta: 6,
                controller: _controller2,
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),

                Confirmation_Button(TextButton: 'Iniciar Sesion', ruta: '/home',
                additionalFunction: _sendLI, 
                Text_Field: 'IS',
                inputTexts: inputT,
                ),

              ]
          ),
        ),
      ),
    );
  }
}
//Añadir un boton + en home y una lista para leer cuantos Pet+ 
//tiene y desplegarlos en la pantalla