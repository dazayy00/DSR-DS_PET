
import 'package:shared_preferences/shared_preferences.dart';

class UserData {
  String? usuario; 
  String? nombre; 
  String? apellido; 
  String? email; 
  String? contrasena;
  String? id;

  /*UserData(
    {this.usuario, 
    this.nombre,
    this.apellido,
    this.email,
    this.contrasena,
    this.id
  });*/

  //Get
  Future<String> getUsuario() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return usuario = prefs.getString('usuarioS')!;
  }
  Future<void> setUsuario(String usuario) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('usuarioS', usuario);
    this.usuario = usuario;
  }

  Future<String> getNombre() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('nombreS')!;
  }
  Future<void> setNombre(String nombre) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nombreS', nombre);
    this.nombre = nombre;
  }

  Future<String> getApellido() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('apellidoS')!;
  }
  Future<void> setApellido(String apellido) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('apellidoS', apellido);
    this.apellido = apellido;
  }

  Future<String> getEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('emailS')!;
  }
  Future<void> setEmail(String email) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('emailS', email);
    this.email = email;
  }

  Future<String> getContrasena() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return contrasena = prefs.getString('contrasenaS')!;
  }
  Future<void> setContrasena(String contrasena) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('contrasenaS', contrasena);
    this.contrasena = contrasena;
  }

  Future<String> getId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('idS')!;
  }
  Future<void> setId(String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('idS', id);
    this.id = id;
  }
  
  /*
  String? get getUsuario => usuario;
  String? get getNombre => nombre;
  String? get getApellido => apellido;
  String? get getEmail => email;
  String? get getContrasena => contrasena;
  String? get getId => id;
  */

  //Convertir a JSON LogIn
  Map<String, dynamic> tJLogIn 
  (String usuario, String contrasena){
    return{
      'username': usuario,
      'password': contrasena
      };
  }
  
  //Convertir a JSON Crear Cuenta
  Map<String, dynamic> tJCreateAccount 
  (String usuario, String nombre, String apellido, String email, String contrasena){
    return{
      'user': usuario,
      'name': nombre,
      'lastname': apellido,
      'email': email,
      'password': contrasena
    };
  }
//
  //Convertir JSON a Texto
  /*factory UserData.fromJsonLI(Map<String, dynamic> json) {
    return UserData(
      usuario: json['user'],
      nombre: json['name'],
      apellido: json['lastname'],
      email: json['email'],
      contrasena: json['password'],
    );
  }*/
//
  /*
  factory UserData.fromJsonCA(Map<String, dynamic> json) {
    return UserData(
      usuario: json['username'],
      contrasena: json['password'],
    );
  }*/

  // Método para imprimir los datos del usuario
  void printUserData() {
    print('User Data:');
    print('Usuario: $usuario');
    print('Nombre: $nombre');
    print('Apellido: $apellido');
    print('email: $email');
    print('contr: $contrasena');
    print('id: $id');
  }

  /*void printUserData2() {
    print('Data:');
    print('Usuario: $usuario');
    print('Nombre: $nombre');
    print('Apellido: $apellido');
    print('email: $email');
    print('contr: $contrasena');
    print('id: $id');
  }*/

}