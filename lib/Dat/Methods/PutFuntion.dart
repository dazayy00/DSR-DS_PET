import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pet_plus_ver01/Dat/UserData.dart';
//import '../../Data/Entities.dart';
import '../Entities.dart';

Future<void> put_EditAccount(String url, Map<String, dynamic> datos) async {
  try {
    var response = await http.post(
      Uri.parse(url),
      body: jsonEncode(datos),
    );

    if (response.statusCode == 200) {
      print('Request exitoso!');
      print('Respuesta del servidor: ${response.body}');
      
      List<String>? accountdata = [];
      // Decodificar el cuerpo de la respuesta
      var decodedResponse = jsonDecode(response.body);
      var attributes = decodedResponse['Attributes'];
      // Imprimir cada clave-valor por separado
      attributes.forEach((key, value) {
        print('$key: $value');
        accountdata.add(value);
      });
      
      print('Dato: --- ${accountdata[0]}');
      print('Dato: --- ${accountdata[1]}');
      print('Dato: --- ${accountdata[2]}');
      print('Dato: --- ${accountdata[3]}');
      print('Dato: --- ${accountdata[4]}');
      print('Dato: --- ${accountdata[5]}');
      
      /*
      UserData usuario1 = UserData();
      
      await usuario1.setUsuario(accountdata[0]);
      await usuario1.setNombre(accountdata[1]);
      await usuario1.setApellido(accountdata[2]);
      await usuario1.setEmail(accountdata[3]);
      await usuario1.setContrasena(accountdata[4]);
      await usuario1.setId(accountdata[5]);

      print('object');

      usuario1.printUserData();

      print('object');*/

    } else {
      print('Error en el request. Código de estado: ${response.statusCode}');
      //print('Error + ' + jsonEncode(datos));
    }
  } catch (e) {
    print('Error en la solicitud: $e');
  }
}

Future<void> put_UpdateAccount(String url, Map<String, dynamic> datos) async {
  try {
    var response = await http.put(
      Uri.parse(url),
      body: jsonEncode(datos),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      print('Request exitoso!');
      print('Respuesta del servidor: ${response.body}');

      List<String>? accountdata = [];
      // Decodificar el cuerpo de la respuesta
      var decodedResponse = jsonDecode(response.body);
      var attributes = decodedResponse['Attributes'];
      // Imprimir cada clave-valor por separado
      attributes.forEach((key, value) {
        print('$key: $value');
        accountdata.add(value);
      });
      
      print('Dato: --- ${attributes['user']}');
      print('Dato: --- ${attributes['name']}');
      print('Dato: --- ${attributes['lastname']}');
      print('Dato: --- ${attributes['email']}');
      print('Dato: --- ${attributes['password']}');

      UserData usuario1 = UserData();

      usuario1.setUsuario(attributes['user']);
      usuario1.setNombre(attributes['name']);
      usuario1.setApellido(attributes['lastname']);
      usuario1.setEmail(attributes['email']);
      usuario1.setContrasena(attributes['password']);
      usuario1.setId(attributes['id']);
      
      /*await usuario1.setApellido(accountdata[0]);
      await usuario1.setUsuario(accountdata[1]);
      await usuario1.setContrasena(accountdata[2]);
      await usuario1.setEmail(accountdata[3]);
      await usuario1.setNombre(accountdata[4]);*/

      print('object');

      usuario1.printUserData();

      print('object');

/*
      UserData usuario1 = UserData();
      
      await usuario1.setUsuario(accountdata[0]);
      await usuario1.setNombre(accountdata[1]);
      await usuario1.setApellido(accountdata[2]);
      await usuario1.setEmail(accountdata[3]);
      await usuario1.setContrasena(accountdata[4]);

      print('object');

      usuario1.printUserData();

      print('object');
*/
    } else {
      print('Error en el request. Código de estado: ${response.statusCode}');
    }
  } catch (e) {
    print('Error en la solicitud: $e');
  }
}