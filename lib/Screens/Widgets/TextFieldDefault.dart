import 'package:flutter/material.dart';
import '../../Routes/IconSelector.dart';

class TextField_Default extends StatefulWidget {
  //const TextField_Default({super.key});

  String TextTf = '...';
  int ruta = 0;

  //ValueChanged<String>? onChanged;
  TextEditingController? controller;

  TextField_Default({required this.TextTf, required this.ruta, 
  //this.onChanged, 
  this.controller
  });

  @override
  State<TextField_Default> createState() => _TextField_Default();
}

class _TextField_Default extends State<TextField_Default> {
  String TextoGuardado = ''; // Variable para almacenar el texto

  @override
  Widget build(BuildContext context) {
    return Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.8,
          height: 60,
          padding: EdgeInsets.only(bottom: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: TextField(
            //textAlignVertical: TextAlignVertical.center,
            maxLines: 1,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: const Color(0xFFececec),
              hintText: widget.TextTf,
              contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              
              prefixIcon: Padding(
                padding: EdgeInsets.all(6.0),
                child: Image.asset(
                  AssetPaths.getPath(widget.ruta),
                  width: 24.0,
                  height: 24.0,
                ),
              ),
                /*prefixIcon: Icon(Icons.person), // Icono a la izquierda del TextField
                prefixIconConstraints: BoxConstraints(minWidth: 40, minHeight: 40),*/
            ),
            controller: widget.controller,
            //onChanged: widget.onChanged,
            /*onChanged: (value) {
              setState(() {
                TextoGuardado = value; // Actualiza el texto en la variable
                print(value + " Guardado");
              });
            },*/
          ),
    );
  }
}