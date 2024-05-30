Map<String, dynamic> tJLogIn 
(String usuario, String contrasena){

  return{
    'username': usuario,
    'password': contrasena
  };

}

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

Map<String, dynamic> tJCreatePet 
(String nombre, String edad, String peso, String razaId, String uId){

  return {
    'name': nombre,
    'weight': peso,
    'age': edad,
    'id_race': razaId,
    'id_user': uId
  };

}

Map<String, dynamic> tJEditAccount 
(String usuario, String nombre, String apellido, String email, String contrasena){

  return{
    'user': usuario,
    'name': nombre,
    'lastname': apellido,
    'email': email,
    'password': contrasena
  };

}