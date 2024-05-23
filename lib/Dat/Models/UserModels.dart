import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pet_plus_ver01/Dat/Methods/DelFuntion.dart';
import 'package:pet_plus_ver01/Dat/Methods/PostFuntion.dart';

Future<void> dataLogIn
(String url, Map<String, dynamic> jsonData) {

  return post_LogInAccount(url, jsonData);
}

///POST
Future<void> CreateAccount 
(String url, Map<String, dynamic> jsonData){

  return post_CreateAccount(url, jsonData);

}

Future<void> CreatePet
(String url, Map<String, dynamic> jsonData){
  
  return post_CreatePet(url, jsonData);

}


///DEL
Future<void> DeleteAccount
(String urlid){
  String url = 'https://eouww9yquk.execute-api.us-east-1.amazonaws.com/user/delete_acount?id=$urlid';
  print('Eliminando...');
  return delete_Account(url);

}

Future<void> DeletePet
(String url,){
  
  return delete_Pet(url);

}
/*
Future<void> dataCreatePetPlus 
(String url, String codigo, String habitacion, String alimento, String gato){

  Map<String, dynamic> jsonData = {
    'codigo': codigo,
    'habitacion': habitacion,
    'alimento': alimento,
    'gato': gato,
  };

  return post_CreatePetPlus(url, jsonData);

}*/