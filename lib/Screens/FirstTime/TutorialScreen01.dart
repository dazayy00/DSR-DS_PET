import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:pet_plus_ver01/Screens/Widgets/FailNotification%20.dart';
import 'package:pet_plus_ver01/Screens/Widgets/SuccessNotification.dart';
import '../Widgets/ConfirmationButton.dart';

class Tutorial_Screen01 extends StatefulWidget {
  
  @override
  State<Tutorial_Screen01> createState() => _Tutorial_Screen01();
}

class _Tutorial_Screen01 extends State<Tutorial_Screen01>{
  bool _isVisible = false;
  int touchCount = 0;
  bool canTap = true;
  bool ani1 = true;
  bool animatenow = false;
  bool activatedW1 = false;
  final int maxTouches = 1; // Define aquí la cantidad máxima de toques permitidos

  void handleTap() {
    if (canTap) {
      setState(() {
        touchCount++;
        print('Se realizó un toque. Toques restantes: ${maxTouches - touchCount}');
        if (touchCount >= maxTouches) {
          canTap = false;
          animatenow = true;
          ani1 = false;
          activatedW1 = true;
          print('Se alcanzó el límite de toques.');
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        
        onTap: handleTap,

        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.grey,
            child: Stack(
              //alignment: Alignment.center,
              children: <Widget>[
                //1
                Positioned(
                  child: Transform(
                    transform: Matrix4.identity()..scale(-1.0, 1.0),
                    alignment: Alignment.center,
                    child: FadeInUp(
                      child: Container(
                        //color: Colors.black,
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.18,
                          //left: MediaQuery.of(context).size.height * 0.01,
                          //right: MediaQuery.of(context).size.height * 0.01,
                        ),
                        child: Image.asset('assets/image-removebg-preview_(3).png', ),
                      ),
                    ),
                  ),
                ),
                
                ani1
                ? Positioned(
                  left: 35,
                  top: 250,
                  right: 0,
                  bottom: 0,
                    child: Container(
                      child: FadeInUp(
                        //animate: ani1,
                        child: Text('Bienvenido a PET+, una aplicación que te permitirá seguir cuidando de tus amigos sin importar en donde te encuentres',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                )
                : Container(),
            SizedBox(height: 20.0),

            SizedBox(height: 20.0),
                
                Positioned(
                  left: 35,
                  top: 250,
                  right: 0,
                  bottom: 0,
                    child: Container(
                      child: FadeInUp(
                        animate: animatenow,
                        child: Text('Te pedimos crear una cuenta de usuario para  tener acceso a todas las funciones como registrar a tus amigos, tus dispositivos y configurar estos mismos',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ),
        
                //3
                Positioned(
                    bottom: 0,
                    left: -50,
                    child: BounceInUp(child: Image.asset('assets/image-removebg-preview_(2).png',)),
                ),
                
                /*ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Fail_Notification();
                        //return Success_Notification();
                        },
                      );
                  },
                  child: Text('Mostrar AlertDialog Personalizado'),
                ),*/

                //4
                Positioned(
                  bottom: 20,
                  left: 15,
                    child: Container(
                      child: FadeIn(
                        duration: Duration(milliseconds: 1500),
                        animate: animatenow,
                        child: Confirmation_Button(TextButton: 'Registrarme', ruta: '/CreateAccount', ActivateButton: animatenow ? true : false,),
                      ),
                    ),
                ),

              ],
            )
          )
        ),
      )
    );
  }

}