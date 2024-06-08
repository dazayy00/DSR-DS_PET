import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:pet_plus_ver01/Screens/Widgets/BackButtonWidget.dart';
import 'package:pet_plus_ver01/Screens/Widgets/ConfirmationButton.dart';
import 'package:pet_plus_ver01/Screens/Widgets/ListButton.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextButtonWidget.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextFieldDefault.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextPasswordDefault.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Routes/IconSelector.dart';
import '../../Routes/ListRaceSelector.dart';

class Register_1st_Cat extends StatefulWidget {
  @override
  State<Register_1st_Cat> createState() => _Register_CatState();
}

class _Register_CatState extends State<Register_1st_Cat> {
  //const Register_Cat({super.key});
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();

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
    super.dispose();
  }

  String selectedItem = '';
  String id = '123';
  List<String>? inputT = [];

  void _onItemSelected(String newItem) {
    setState(() {
      selectedItem = newItem;
    });
  }

  Future<void> getId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    
    id = prefs.getString('idS')!;
    print(id + ' + ' + '||');
    print(prefs.get('idS'));
      
  }

  void _saveTexts(){
    
    setState(() {
      
      List<String> FieldT = [_controller1.text, _controller2.text, _controller3.text, selectedItem, id];
      for (var texto in FieldT) {
        inputT!.add(texto);
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                  ),
                  
                  
                  
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                  ),
      
                  Image.asset(
                    AssetPaths.getPath(9),
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
          
                  TextField_Default(TextTf: 'Peso', ruta: 15,
                  controller: _controller2,
                  ),
      
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
      
                  TextField_Default(TextTf: 'Edad', ruta: 7,
                  controller: _controller3,
                  ),
      
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
          
                  List_Button_Widget(ruta: 8, lista: Race_Selector,
                  onItemSelected: _onItemSelected,
                  pathtype: 'RaceId',
                  ),
      
                  Text(selectedItem),
                  
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                  ),
      
                  Confirmation_Button(TextButton: 'Agregar',
                  additionalFunction: _saveTexts,
                  ruta: '/home',
                  Text_Field: 'CM',
                  inputTexts: inputT,
                  ),
          
                ],
            ),
          ),
        ),
      ),
    );
  }
}