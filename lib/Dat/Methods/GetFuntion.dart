import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pet_plus_ver01/Dat/UserData.dart';

Future<dynamic> get_AccountPets(String url) async {
  List<dynamic> answerL;
  List<String> nameList = [];
  try {
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      print('Request exitoso!');
      print('Respuesta del servidor: ${response.body}');
      
      List<dynamic> lista = jsonDecode(response.body);

      print('///');
      print(lista);

      for (var elemento in lista) {
        print(elemento['name']);
        nameList.add(elemento['name']);
      }

      /*
      // Si la respuesta es JSON, puedes decodificarla
      List<dynamic> lista = jsonDecode(response.body);
      List<Map<String, dynamic>> dlista = [];
      int number = 1;
      
      print('Número de elementos en la lista: ${lista.length}');

      for (var item in lista) {
        print(number.toString() + ' ***');
        dlista.add(item);
          print('Elemento: $item');
          print('Lista: $dlista');
          number ++;
        }

        print('object');

        /*
        for (var item in dlista) {
        print('/////');
        item
        }*/
        */

        return nameList;
        
      /*
      Map<String, dynamic> dd = lista[0];
        print('Datos decodificados de lista: $dd');
        
        // Ahora puedes acceder a los campos del objeto
        String idRaza = dd['id_race'];
        String idUser = dd['id_user'];
        String id = dd['id'];
        String nombre = dd['name'];
        String peso = dd['weight'];
        String edad = dd['age'];
        
        print('ID Raza: $idRaza');
        print('ID Usuario: $idUser');
        print('ID: $id');
        print('Nombre: $nombre');
        print('Peso: $peso');
        print('Edad: $edad');
        */
    } else {
      print('Error en el request. Código de estado: ${response.statusCode}');
      return null;
    }
  } catch (e) {
    print('Error en la solicitud: $e');
    return null;
  }
}