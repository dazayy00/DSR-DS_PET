import 'package:flutter/material.dart';
import '../../Routes/IconSelector.dart';

class TextPassword_Default extends StatefulWidget {
  //const TextField_Default({super.key});
  bool _obscureText = true;
  String TextTf = '...';
  int ruta = 0;

  TextEditingController? controller;

  TextPassword_Default({required this.TextTf, required this.ruta, 
  this.controller
  });

  @override
  State<TextPassword_Default> createState() => _TextPassword_Default();
}

class _TextPassword_Default extends State<TextPassword_Default> {
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
            obscureText: widget._obscureText,
            //textAlignVertical: TextAlignVertical.center,
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

              suffixIcon: IconButton(
            icon: Icon(
              widget._obscureText ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                widget._obscureText = !widget._obscureText;
              });
            },
          ),
                /*prefixIcon: Icon(Icons.person), // Icono a la izquierda del TextField
                prefixIconConstraints: BoxConstraints(minWidth: 40, minHeight: 40),*/
            ),
            controller: widget.controller,
          ),
    );
  }
}