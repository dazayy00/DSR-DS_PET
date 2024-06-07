import 'package:flutter/material.dart';
import 'package:pet_plus_ver01/Dat/Methods/DelFuntion.dart';
import 'package:pet_plus_ver01/Dat/Models/UserModels.dart';
import 'package:pet_plus_ver01/Screens/Widgets/Delete.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Delete_Account extends StatelessWidget {
  String id = '';

  Future<void> getId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    id = prefs.getString('idS')!;
  }

  Future<void> clearSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eliminar Cuenta'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2), // Ajuste del margen superior para centrar verticalmente el texto
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '¿Estás seguro de que quieres eliminar tu cuenta?',
                textAlign: TextAlign.center, // Centra el texto
                style: TextStyle(
                  fontSize: 24, // Tamaño de fuente más grande
                  fontFamily: 'Roboto', // Cambia el tipo de letra
                ),
              ),
            ),
          ),
          SizedBox(height: 20), // Ajuste del espacio entre el texto y el botón
          Delete(
            buttonText: 'Eliminar Cuenta',
            onPressed: () async {
              print('Borrando Cuenta. Reiniciando...');
              getId();

              Future.delayed(Duration(seconds: 3), () {
                DeleteAccount(id);
              });
              
              
              await clearSharedPreferences();
               Navigator.pushReplacementNamed(context, '/MainScreen');
              // Agrega aquí la lógica para eliminar la cuenta
              // Por ejemplo, puedes mostrar un diálogo de confirmación antes de eliminarla
            },
          ),
          SizedBox(height: 20), // Ajuste del espacio entre el botón y la imagen
          Expanded( // Utilizamos Expanded para que la imagen ocupe el espacio restante y se mueva hacia la esquina inferior derecha
            child: Align(
              alignment: Alignment.bottomRight, // Alineamos la imagen en la esquina inferior derecha
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/gatito.png', // Ruta de la imagen
                  width: 200, // Ancho de la imagen
                  height: 200, // Alto de la imagen
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
