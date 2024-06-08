import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:pet_plus_ver01/Dat/Models/UserModels.dart';
import 'package:pet_plus_ver01/Routes/CatOwnerSelector.dart';
import 'package:pet_plus_ver01/Routes/ListFoodSelector.dart';
import 'package:pet_plus_ver01/Screens/Widgets/BackButtonWidget.dart';
import 'package:pet_plus_ver01/Screens/Widgets/ConfirmationButton.dart';
import 'package:pet_plus_ver01/Screens/Widgets/ListButton.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextButtonWidget.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextFieldDefault.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TextPasswordDefault.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Routes/IconSelector.dart';
import '../../Routes/ListRaceSelector.dart';

class Register_PetP2 extends StatefulWidget {
  @override
  State<Register_PetP2> createState() => _Register_PetP2State();
}

class _Register_PetP2State extends State<Register_PetP2> {
  //const Register_PetP({super.key});
  Color colora = Colors.red;
  String selectedItem = '';

  String id = '22';
  var nList;
  List<String> nameList = ['-Seleccionar-'];

  @override
  void initState() {
    
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 3), getId);
    });

    super.initState();
    _loadData();
    //_loadData();
  }

  Future<void> _loadData() async {
    // Simula una operación asincrónica como una llamada a la red
    await Future.delayed(Duration(seconds: 4));
    setState(() {
      print('Actualizacion: 2 carga');
    });
  }

  void _onItemSelected(String newItem) {
    setState(() {
      selectedItem = newItem;
    });
  }

  Future<void> getId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    
    id = prefs.getString('idS')!;
    print(id + '------');
    nList = await GetAccountPets(id);
    //nameList = nList.cast<String>();
    nameList.addAll(nList.cast<String>());
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
        
                //TextField_Default(TextTf: 'Alimento', ruta: 11,),

                List_Button_Widget(ruta: 11, //lista: Cat_Owner_Selector,
                lista: Food_Selector,
                onItemSelected: _onItemSelected,
                pathtype: 'FoodId',
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),

                List_Button_Widget(ruta: 8, //lista: Cat_Owner_Selector,
                lista: nameList,
                onItemSelected: _onItemSelected,
                pathtype: 'PetSelect',
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
        
                /*TextField_Default(TextTf: 'Raza', ruta: 8,),
                
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                ),*/

                Confirmation_Button(TextButton: 'Confirmar', ruta: '/home',),

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