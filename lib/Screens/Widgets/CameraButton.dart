import 'package:flutter/material.dart';

class Camera_Button extends StatelessWidget {
  const Camera_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                  onPressed: (){
                    print('Camara QR');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all<double>(0),
                    shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0), // Sin bordes
                    ),
                    ),
                  ),
                    child: Image.asset(
                      'assets/foto.png',
                      width: 24.0,
                      height: 24.0,
                    ),
                );
  }
}