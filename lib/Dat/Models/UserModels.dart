import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pet_plus_ver01/Dat/Methods/DelFuntion.dart';
import 'package:pet_plus_ver01/Dat/Methods/GetFuntion.dart';
import 'package:pet_plus_ver01/Dat/Methods/PostFuntion.dart';
import 'package:pet_plus_ver01/Dat/Methods/PutFuntion.dart';

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

Future<void> CreatePetP
(String url, Map<String, dynamic> jsonData){
  
  return post_CreatePet(url, jsonData);

}
//

///GET
Future<dynamic> GetAccountPets
(String urlid){
  String url = 'https://eouww9yquk.execute-api.us-east-1.amazonaws.com/pets/get_pets_user?id=$urlid';
  print('Obteniendo datos de Mascotas');
  return get_AccountPets(url);

}

Future<dynamic> GetAccountPetData
(String urlid){
  String url = 'https://eouww9yquk.execute-api.us-east-1.amazonaws.com/pets/get_pets_user?id=$urlid';
  print('Obteniendo datos de Mascota Adicionales');
  return get_AccountPetData(url);

}

Future<dynamic> GetAccountPetPData
(String urlid){
  String url = 'https://eouww9yquk.execute-api.us-east-1.amazonaws.com/machines/get_machines_user?id=$urlid';
  print('Obteniendo datos de Maquina Adicionales');
  return get_AccountPetPData(url);

}

void GAP_DeCode(List<dynamic> lista_nJ){

}

//

///PUT
Future<void> EdditAccount 
(String urlid, Map<String, dynamic> jsonData){
  String url = 'https://eouww9yquk.execute-api.us-east-1.amazonaws.com/user/update_user?id=$urlid';
  print('Editando Usuario');
  return put_UpdateAccount(url, jsonData);

}
//

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