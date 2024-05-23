import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pet_plus_ver01/Dat/UserData.dart';

Future<void> delete_Account(String url) async {
  try {
    // Realiza la solicitud DELETE
    final response = await http.delete(Uri.parse(url));

    // Maneja la respuesta según el código de estado HTTP
    if (response.statusCode == 200) {
      // La solicitud se completó con éxito
      print('Cuenta de Usuario eliminado correctamente.');
    } else {
      // Manejo de errores
      print('Error al eliminar el recurso: ${response.statusCode}');
      print('Respuesta del servidor: ${response.body}');
    }
  } catch (e) {
    // Manejo de excepciones
    print('Error en la solicitud DELETE: $e');
  }
}

Future<void> delete_Pet(String url) async {
  try {
    // Realiza la solicitud DELETE
    final response = await http.delete(Uri.parse(url));

    // Maneja la respuesta según el código de estado HTTP
    if (response.statusCode == 200) {
      // La solicitud se completó con éxito
      print('Mascota del Usuario eliminado correctamente.');
    } else {
      // Manejo de errores
      print('Error al eliminar el recurso: ${response.statusCode}');
      print('Respuesta del servidor: ${response.body}');
    }
  } catch (e) {
    // Manejo de excepciones
    print('Error en la solicitud DELETE: $e');
  }
}

