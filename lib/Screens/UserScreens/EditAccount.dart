import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:pet_plus_ver01/Screens/Widgets/BackButtonWidget.dart';
import 'package:pet_plus_ver01/Screens/Widgets/ConfirmationButton.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextButtonWidget.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextFieldDefault.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextPasswordDefault.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Edit_Account extends StatefulWidget {
  @override
  State<Edit_Account> createState() => _Edit_AccountState();
}

class _Edit_AccountState extends State<Edit_Account> {
  //const Create_Account({super.key});
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
  bool zz = false;
  String id = '123';

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 3), getId);
    });
  }
  
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

  Future<void> getId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    
    id = prefs.getString('idS')!;
    print(id + ' + ' + '||');
    print(prefs.get('idS'));
      
  }

  bool _areTextsEqual() {
    return _controller5.text == _controller6.text;
  }

  void _compareTexts(){
    if(_areTextsEqual()){
      setState(() {
        result = '==';
        _result = true;
        List<String> FieldT = [_controller1.text, _controller2.text, _controller3.text, _controller4.text, _controller5.text, id];
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
                
                Confirmation_Button(TextButton: 'Guardar', ruta: '/home',
                additionalFunction: _compareTexts,
                Text_Field: 'EU',
                inputTexts: inputT,
                ),
                
                TextButtonWidget(texto: 'Borrar Cuenta', color: Colors.red, ruta: '/DeleteAccount',),
        
              ],
          ),
        ),
      ),
    );
  }
}