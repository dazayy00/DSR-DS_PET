import 'dart:convert';
import 'package:http/http.dart' as http;

void fetch_UserData() async {
  var url = Uri.parse('https://api.example.com/data');
  
  try {
    var response = await http.get(url);
    
    if (response.statusCode == 200) {
      // Procesar la respuesta
      print('Respuesta: ${response.body}');
      //Obtener datos de Usuario

    } else {
      // Manejar errores de solicitud
      print('Error: ${response.statusCode}');
      //Crear una notificacion de Error y retornarla

    }
  } catch (e) {
    // Manejar errores de red
    print('Error de red: $e');
  }
  //Retorno Datos o Error

}

void get_UserData(Map<String, dynamic> requestBody) {
  // Aquí puedes manejar la solicitud recibida desde Postman
  print('Solicitud recibida desde Postman:');
  print(requestBody);

  // Aquí puedes realizar cualquier acción necesaria con los datos recibidos
  // Por ejemplo, puedes acceder a los datos y realizar operaciones con ellos

  String nombre = requestBody['nombre'];
  String apellido = requestBody['apellido'];
  String usuario = requestBody['usuario'];
  String email = requestBody['email'];

  // Realizando acciones con las variables
  print('Nombre: $nombre');
  print('Nombre: $email');

  // Si necesitas devolver una respuesta, puedes hacerlo de esta manera:
  Map<String, dynamic> responseBody = {
    'message': 'Solicitud Inicio de Sesion recibida exitosamente',
    'data': requestBody // Puedes enviar de vuelta los datos recibidos si es necesario
  };

  // Convertimos la respuesta a formato JSON
  String jsonResponse = jsonEncode(responseBody);
  
  // Enviamos la respuesta de vuelta
  http.Response response = http.Response(jsonResponse, 200);
  print('Enviando respuesta a Postman:');
  print(response.body);
}