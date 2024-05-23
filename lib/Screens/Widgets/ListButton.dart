import 'package:flutter/material.dart';
import 'package:pet_plus_ver01/Routes/ListRaceId.dart';
import '../../Routes/IconSelector.dart';

class List_Button_Widget extends StatefulWidget {
  //const List_Button_Widget({super.key});
  //List rselect = ListRaceSelector;
  int ruta = 0;
  List<String> lista = ['Opción 1', 'Opción 2', 'Opción 3'];
  List<String>? listaID;
  String? _selectedItem;
  ValueChanged<String>? onItemSelected;

  List_Button_Widget({
    required this.ruta, 
    required this.lista,
    
    this.listaID,
    this.onItemSelected
    });

  @override
  State<List_Button_Widget> createState() => _List_Button_WidgetState();
}

class _List_Button_WidgetState extends State<List_Button_Widget> {
  String? valorSeleccionado = '-Seleccionar-';

  @override
  Widget build(BuildContext context) {

    
    
    return Container(
        alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.8,
          height: 55,
          padding: EdgeInsets.only(bottom: 4.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        child: InputDecorator(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide.none,
              ),
            filled: true,
              fillColor: const Color(0xFFececec),
              //hintText: 'Raza',
              contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            prefixIcon: Padding(
                padding: EdgeInsets.all(6.0),
                child: Image.asset(
                  AssetPaths.getPath(widget.ruta),
                  width: 24.0,
                  height: 24.0,
                ),
              ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              //value: dropdonwValue,
              style: const TextStyle(color: Colors.black),
              
              items:
                widget.lista.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),

            value: valorSeleccionado,

            

            onChanged: (String? newValue) {
              setState(() {
                  valorSeleccionado = newValue;
                });
              print('Seleccionaste: $newValue');
              print(Race_Id.getRaceID(newValue!));
              if (newValue != null) {
          widget.onItemSelected!(Race_Id.getRaceID(newValue!));
        }
            },
            ),
          ),
        ),
      );
  }
}