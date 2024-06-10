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
  TextEditingController _controller1 = TextEditingController();

  Color colora = Colors.red;
  String selectedItem = '';
  List<String>? inputT = [];

  String id = '22';
  var nList;
  var doubleList;
  List<String> nameList = ['-Seleccionar-'];
  List<String> prenameList = [];
  List<String> idList = [];
  late String texto;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    texto = ModalRoute.of(context)!.settings.arguments as String;
  }

  @override
  void dispose() {
    _controller1.dispose();
    super.dispose();
  }

  void _saveTexts(){
    
    setState(() {
      
      List<String> FieldT = [texto, _controller1.text, id, selectedItem];
      for (var texto in FieldT) {
        inputT!.add(texto);
      }
      print('maquina');
    });
  }

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
      print(texto + '___');
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
    ///nameList.addAll(nList.cast<String>());
    
    doubleList = await GetAccountPetData(id);
    for (var elemento in doubleList) {
    prenameList.add(elemento['name']);
    idList.add(elemento['id']);
    }
    nameList.addAll(prenameList);
  }

  @override
  Widget build(BuildContext context) {
    String texto = ModalRoute.of(context)!.settings.arguments as String;

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
        
                TextField_Default(TextTf: 'Nombre', ruta: 1,
                controller: _controller1,
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
        
                //TextField_Default(TextTf: 'Alimento', ruta: 11,),
                /*
                List_Button_Widget(ruta: 11, //lista: Cat_Owner_Selector,
                lista: Food_Selector,
                onItemSelected: _onItemSelected,
                pathtype: 'FoodId',
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                */

                List_Button_Widget(ruta: 8, //lista: Cat_Owner_Selector,
                lista: nameList,
                //lista2: idList,
                jj: doubleList,
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

                Confirmation_Button(TextButton: 'Confirmar', 
                additionalFunction: _saveTexts,
                ruta: '/home',
                Text_Field: 'ConnectM2',
                inputTexts: inputT,
                ),

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