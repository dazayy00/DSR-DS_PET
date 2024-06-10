import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pet_plus_ver01/Dat/UserData.dart';
//import '../../Data/Entities.dart';
import '../Entities.dart';

Future<dynamic> post_LogInAccount(String url, Map<String, dynamic> datos) async {
  List<dynamic> answerL;
  List<String> nameList = [];
  try {
    var response = await http.post(
      Uri.parse(url),
      body: jsonEncode(datos),
    );

    if (response.statusCode == 200) {
      print('Request exitoso!');
      print('Respuesta del servidor: ${response.body}');

      var lista = jsonDecode(response.body);
      print('///');
      print(lista);
/*
      if(lista['token']){

      }else if(lista['message']){

      }

      for (var elemento in lista) {
        print(elemento['name']);
        nameList.add(elemento['name']);
      }*/
      
      return null;

      //Convertir los datos a Entities
      /*UserData user1 = new UserData();

       Map<String, dynamic> data = datos;
       String nombre = datos['nombre'];
       String apellido = datos['apellido'];
       String usuario = datos['usuario'];
       String email = datos['email'];
       user1.setNombre(nombre);
       user1.setApellido(apellido);
       user1.setUsuario(usuario);
       user1.setEmail(email);*/

    } else {
      print('Error en el request. Código de estado: ${response.statusCode}');
      return null;
    }
  } catch (e) {
    print('Error en la solicitud: $e');
    return null;
  }
}

///
Future<void> post_CreateAccount(String url, Map<String, dynamic> datos) async {
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
      // Imprimir cada clave-valor por separado
      decodedResponse.forEach((key, value) {
        print('$key: $value');
        accountdata.add(value);
      });

      UserData usuario1 = UserData();
      String us = decodedResponse['user'].toString();
      String n = decodedResponse['name'].toString();
      String ln = decodedResponse['lastname'].toString();
      String em = decodedResponse['email'].toString();
      String pw = decodedResponse['password'].toString();
      String iid = decodedResponse['id'].toString();

      usuario1.setUsuario(us);
      usuario1.setNombre(n);
      usuario1.setApellido(ln);
      usuario1.setEmail(em);
      usuario1.setContrasena(pw);
      usuario1.setId(iid);
      
      /*await usuario1.setUsuario(accountdata[0]);
      await usuario1.setNombre(accountdata[1]);
      await usuario1.setApellido(accountdata[2]);
      await usuario1.setEmail(accountdata[3]);
      await usuario1.setContrasena(accountdata[4]);
      await usuario1.setId(accountdata[5]);*/

      print('object');

      usuario1.printUserData();

      print('object');

    } else {
      print('Error en el request. Código de estado: ${response.statusCode}');
      //print('Error + ' + jsonEncode(datos));
    }
  } catch (e) {
    print('Error en la solicitud: $e');
  }
}




Future<void> post_CreatePet(String url, Map<String, dynamic> datos) async {
  /*List<String>? oo = [];
      var decodedResponse = jsonDecode(datos.toString());
      print('object');
      // Imprimir cada clave-valor por separado
      decodedResponse.forEach((key, value) {
        print('$key: $value');
        print('|');
        oo.add(value);
      });

      print('1: ${oo[0]}');
      print('2: ${oo[1]}');
      print('3: ${oo[2]}');
      print('4: ${oo[3]}');
      print('5: ${oo[4]}');*/
  try {
    var response = await http.post(
      Uri.parse(url),
      body: jsonEncode(datos),
      
    );

    if (response.statusCode == 200) {
      print('Request exitoso!');
      print('Respuesta del servidor: ${response.body}');
      ////
      List<String>? accountdata = [];
      // Decodificar el cuerpo de la respuesta
      var decodedResponse = jsonDecode(response.body);
      // Imprimir cada clave-valor por separado
      decodedResponse.forEach((key, value) {
        print('$key: $value');
        accountdata.add(value);
      });

      print('Nombre: ${accountdata[0]}');
      print('Peso: ${accountdata[1]}');
      print('Edad: ${accountdata[2]}');
      print('Id Raza: ${accountdata[3]}');
      print('Id Dueñp: ${accountdata[4]}');
      print('Id ???: ${accountdata[5]}');

      //Convertir los datos a Entities
      /*
      PetData pet1 = new PetData();

       Map<String, dynamic> data = datos;
       String nombre = datos['nombre'];
       String edad = datos['edad'];
       String raza = datos['raza'];
       pet1.setNombre(nombre);
       pet1.setEdad(edad);
       pet1.setRaza(raza);*/

    } else {
      print('Error en el request. Código de estado: ${response.statusCode}');

      List<String>? accountdata = [];
      var decodedResponse = jsonDecode(datos.toString());
      print('object');
      // Imprimir cada clave-valor por separado
      decodedResponse.forEach((key, value) {
        print('$key: $value');
        accountdata.add(value);
      });

      print('1: ${accountdata[0]}');
      print('2: ${accountdata[1]}');
      print('3: ${accountdata[2]}');
      print('4: ${accountdata[3]}');
      print('5: ${accountdata[4]}');
    }
  } catch (e) {
    print('Error en la solicitud: $e');
  }
}

Future<void> post_CreatePetP(String url, Map<String, dynamic> datos) async {

  try {
    var response = await http.post(
      Uri.parse(url),
      body: jsonEncode(datos),
      
    );

    if (response.statusCode == 200) {
      print('Request exitoso!');
      print('Respuesta del servidor: ${response.body}');
      ////
      List<String>? accountdata = [];
      // Decodificar el cuerpo de la respuesta
      var decodedResponse = jsonDecode(response.body);
      // Imprimir cada clave-valor por separado
      decodedResponse.forEach((key, value) {
        print('$key: $value');
        accountdata.add(value);
      });

      print('1: ${accountdata[0]}');
      print('2: ${accountdata[1]}');
      print('3: ${accountdata[2]}');
      print('4: ${accountdata[3]}');
      print('5: ${accountdata[4]}');
      print('6: ${accountdata[5]}');
      print('7: ${accountdata[6]}');
      
    } else {
      print('Error en el request. Código de estado: ${response.statusCode}');

      List<String>? accountdata = [];
      var decodedResponse = jsonDecode(datos.toString());
      print('Failed Create Machine Connection');
      // Imprimir cada clave-valor por separado
      decodedResponse.forEach((key, value) {
        print('$key: $value');
        accountdata.add(value);
      });

      print('1: ${accountdata[0]}');
      print('2: ${accountdata[1]}');
      print('3: ${accountdata[2]}');
      print('4: ${accountdata[3]}');
      print('5: ${accountdata[4]}');
    }
  } catch (e) {
    print('Error en la solicitud: $e');
  }
}

/*
Future<void> post_CreatePetPlus(String url, Map<String, dynamic> datos) async {
  try {
    var response = await http.post(
      Uri.parse(url),
      body: datos,
    );

    if (response.statusCode == 200) {
      print('Request exitoso!');
      print('Respuesta del servidor: ${response.body}');

      //Convertir los datos a Entities
      PetPlusData pp1 = new PetPlusData();

       Map<String, dynamic> data = datos;
       String codigo = datos['codigo'];
       String habitacion = datos['habitacion'];
       String alimento = datos['alimento'];
       String gato = datos['gato'];
       pp1.setCodigo(codigo);
       pp1.setHabitacion(habitacion);
       pp1.setAlimento(alimento);
       pp1.setGato(gato);

    } else {
      print('Error en el request. Código de estado: ${response.statusCode}');
    }
  } catch (e) {
    print('Error en la solicitud: $e');
  }
}*/

Future<void> getRequestExample() async {
  // URL a la que queremos hacer la solicitud GET
  String url = 'https://ejemplo.com/api/data';

  try {
    // Realizamos la solicitud GET
    http.Response response = await http.get(Uri.parse(url));

    // Verificamos si la solicitud fue exitosa (código de estado 200)
    if (response.statusCode == 200) {
      // Imprimimos la respuesta recibida en la consola
      print('Respuesta del servidor:');
      print(response.body);
    } else {
      // Si la solicitud no fue exitosa, imprimimos el código de estado
      print('Error: Código de estado ${response.statusCode}');
    }
  } catch (e) {
    // Si ocurre un error durante la solicitud, lo imprimimos
    print('Error durante la solicitud: $e');
  }
}