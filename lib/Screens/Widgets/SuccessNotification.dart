import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class Success_Notification extends StatefulWidget {
  //const Success_Notification({super.key});

  @override
  State<Success_Notification> createState() => _Success_Notification();
}

class _Success_Notification extends State<Success_Notification> {
  bool _isShowing = false;

  void _toggleVisibility() {
    setState(() {
      _isShowing = !_isShowing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          Stack(
            children: <Widget>[
              
              AlertDialog(
                backgroundColor: Color(0xFF02fcf3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(
                        color: Colors.black, // Cambia aquí el color del borde
                        width: 1.0, // Cambia aquí el ancho del borde
                      ),
                  ),
                title: Text('\nTitulo Notificacion',
                textAlign: TextAlign.center,
                ),
                content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('Este es un mensaje de ejemplo.'),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              //side: BorderSide(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: Text('Cerrar',
                          style: TextStyle(fontSize: 15.0, 
                          color: Colors.black,),),
                        ),
                      ],
                    ),
              ),
              Center(
                child: Container(
            width: 60,
            height: 60,
            
            alignment: Alignment.center,
            child: Container(
              width: 40,
              height: 40,
              child: Image.asset('assets/comprobado(4).png', )),
              decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5), // Color de la sombra
                  spreadRadius: 1, // Extensión de la sombra
                  blurRadius: 4, // Desenfoque de la sombra
                  offset: Offset(0, 1), // Desplazamiento de la sombra
                ),
              ],
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Colors.black,
                width: 1.0,
              ),
            ),
          )
              ),
            ],
          ),
      ],
    );
  }
}