import 'package:flutter/material.dart';

class Back_Button_Widget extends StatelessWidget {
  const Back_Button_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                    print('object');
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
                      'assets/flecha-izquierda.png',
                      width: 24.0,
                      height: 24.0,
                    ),
                );
  }
}