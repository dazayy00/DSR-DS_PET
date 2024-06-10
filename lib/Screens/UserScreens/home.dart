import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:pet_plus_ver01/Dat/Models/UserModels.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Widgets/service_card.dart';
import '../Widgets/LateralMenu.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<Widget> listaRectangulos = [];
  String id = '123';
  var nList;
  var pList;
  List<String> nameList = [];
  List<String> idList = [];
  List<String> idList2 = [];
  List<String> petNameList = [];
  List<String> finalPetNameList = [];
  List<String> hourList = [];
  List<String> statusList = [];

  @override
  void initState() {
    
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 3), getId);
    });
    Future.delayed(Duration(seconds: 3), () {
      
    });

    super.initState();
    _loadData();
    //_loadData();
  }

  Future<void> _loadData() async {
    // Simula una operación asincrónica como una llamada a la red
    await Future.delayed(Duration(seconds: 5));
    setState(() {
      print('Actualizacion: 2 carga');
    });
  }

  Future<void> getId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    
    id = prefs.getString('idS')!;
    print(id + '------');
    pList = await GetAccountPetData(id);
    for (var elemento in pList) {
    petNameList.add(elemento['name']);
    idList2.add(elemento['id']);
    }
    
    nList = await GetAccountPetPData(id);
    for (var elemento in nList) {
    nameList.add(elemento['name']);
    idList.add(elemento['id_pet']);
    //petNameList.add(elemento['']);
    hourList.add(elemento['activationTime']);
    statusList.add(elemento['statusMachine']);
    }
    
    for (int i = 0; i < idList.length; i++) {
    for (int j = 0; j < idList2.length; j++) {
      if (idList[i] == idList2[j]) {
        print(petNameList[j]);
        finalPetNameList.add(petNameList[j]);
      }
    }
  }

  List<bool> boolList = convertirAListaBool(statusList);

  
}

List<bool> convertirAListaBool(List<String> stringList) {
  return stringList.map((item) => item.toLowerCase() == 'true').toList();
/*
  for (String item in statusList) {
    if (item.toLowerCase() == 'true') {
      boolList!.add(true);
    } else if (item.toLowerCase() == 'false') {
      boolList!.add(false);
    } else {
      print('Valor no válido en la lista: $item');
    }
  }*/

    //nameList = nList.cast<String>();
  }
  

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
                'MI HOGAR',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 44, 193, 219),
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(1, 1),
                      blurRadius: 2,
                    ),
                  ],
                ),
              ),
        ),
        drawer: Lateral_Menu(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Widget encima
              /*
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Encabezado',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),*/
              
              
              // Lista de cuadrados
              //index es el numero de instancias Pet+
              //Es necesario crear una lista para cada conexion
              Column(
                children: List.generate(nameList.length, (index) {
                  return ServiceCard(
                icon: Icons.power_settings_new,
                state: convertirAListaBool(statusList)[index],
                availability: 900,
                //petname: nameList[index],
                petname: finalPetNameList[index],
                iconSize: 60,
                clockT: hourList[index],
              );
                }),
              ),
              
              // Widget debajo de la lista de cuadrados
              /*
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Pie de página',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              */
              
              ListN(listaRectangulos),
      
              /*
              ElevatedButton(
              onPressed: () {
                setState(() {
                  listaRectangulos.add(
                    ServiceCard(
            icon: Icons.power_settings_new,
            state: false,
            availability: 900,
            //clockT: 'Lun ' + '00:00',
            //thumbsUp: true,
            petname: 'michi 1',
            iconSize: 60,
          ),
                  );
                });
              },
              child: const Text('Agregar Rectángulo'),
            ),*/
              
              /*
              ServiceCard(
                icon: Icons.power_settings_new,
                state: false,
                availability: 900,
                nextRound: 'Lun ' + '00:00',
                //thumbsUp: true,
                petname: 'michi 1',
                iconSize: 60,
              ),
              SizedBox(height: 20),
              ServiceCard(
                icon: Icons.power_settings_new,
                state: true,
                availability: 480,
                nextRound: 'Mier ' + '8:40',
                //thumbsUp: true,
                petname: 'michi 2',
                iconSize: 60,
              ),
              SizedBox(height: 20),
              ServiceCard(
                icon: Icons.power_settings_new,
                state: false,
                availability: 0,
                nextRound: 'No definida',
                //thumbsUp: false,
                petname: 'michi 3',
                iconSize: 60,
              ),
              SizedBox(height: 20),
              */
              
            ],
          ),
        ),
      ),
    );
  }
}

class ListN extends StatelessWidget {
  final List<Widget> listaRectangulos;

  ListN(this.listaRectangulos);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: listaRectangulos,
      ),
    );
  }
}