import 'package:flutter/material.dart';
import 'package:pet_plus_ver01/Screens/Widgets/ConfirmationButton.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextButtonWidget.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextFieldDefault.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextPasswordDefault.dart';

class Create_Account extends StatefulWidget {
  @override
  State<Create_Account> createState() => _Create_AccountState();
}

class _Create_AccountState extends State<Create_Account> {
  //const Create_Account({super.key});
  //Cantidad de Fields = 6
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  TextEditingController _controller4 = TextEditingController();
  TextEditingController _controller5 = TextEditingController();
  TextEditingController _controller6 = TextEditingController();
  
  bool? _result = false;
  String result = '';
  String mensage = '';
  List<String>? inputT = [];
  //Cantidad de la lista a 6
  //List<String> _inputTexts = List<String>.filled(4, '');
  bool zz = false;

  ///GlobalKey<_Create_AccountState> refreshKey = GlobalKey<_Create_AccountState>();

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _controller5.dispose();
    _controller6.dispose();
    super.dispose();
  }

  bool _areTextsEqual() {
    return _controller5.text == _controller6.text;
  }

  void _compareTexts(){
    if(_areTextsEqual()){
      setState(() {
        result = '==';
        _result = true;
        List<String> FieldT = [_controller1.text, _controller2.text, _controller3.text, _controller4.text, _controller5.text,];
        for (var texto in FieldT) {
    inputT!.add(texto);
  }
      });
    } else {
      setState(() {
        result = '!=';
        _result = false;
      });
    }
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
                  padding: EdgeInsets.all(25.0),
                ),

                Image.asset(
            'assets/usuario.png', // Ruta de la imagen
            width: 100.0,
            height: 100.0,
          ),

                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
        
                TextField_Default(TextTf: 'Nombre', ruta: 1,
                controller: _controller1, 
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
        
                TextField_Default(TextTf: 'Apellido', ruta: 2,
                controller: _controller2, 
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
        
                TextField_Default(TextTf: 'Nombre de Usuario', ruta: 3,
                controller: _controller3, 
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
        
                TextField_Default(TextTf: 'Dirección de Correo', ruta: 4,
                controller: _controller4, 
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
        
                TextPassword_Default(TextTf: 'Contraseña', ruta: 5,
                controller: _controller5, 
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
        
                TextPassword_Default(TextTf: 'Confirmación de Contraseña', ruta: 6,
                controller: _controller6, 
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),

                Text(_controller5.text  + " " + _controller6.text),

                /*ElevatedButton(
      onPressed: _areTextsEqual,
      child: Text('Comprobar'),
    ),*/
                
                Confirmation_Button(TextButton: 'Crear Cuenta', 
                additionalFunction: _compareTexts, 
                
                //ruta: '/home', //No ir a ningun lado si esta vacio o contrasena
                //ruta: _inputTexts[0].toString() == _inputTexts[1].toString() ? '/home' : null,
                //ruta: _inputTexts[0] == _inputTexts[1] ? '/home' : null,
                ruta: '/Register_1st_Cat' ,
                //Text_Field: _inputTexts[1] == _inputTexts[1] ? true : false,
                Text_Field: 'CU',
                inputTexts: inputT,
                
                ),
                
                TextButtonWidget(texto: 'Iniciar Sesión', color: Color.fromARGB(255, 165, 161, 78), ruta: '/LogIn',),

            Text(
              mensage = _result! ? 'Puede continuar' : 'Complete correctamente los campos',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
        
              ],
          ),
        ),
      ),
    );
  }
}