//Datos de Inicio de Sesión

class UserData {
  late String nombre;
  late String apellido;
  late String usuario;
  late String email;


  // Constructor
  //UserData(this.nombre, this.apellido, this.usuario, this.email);

  String getNombre(){
    return nombre;
  }
  void setNombre(String nombre){
    this.nombre = nombre;
  }

  String getApellido(){
    return apellido;
  }
  void setApellido(String apellido){
    this.apellido = apellido;
  }

  String getUsuario(){
    return usuario;
  }
  void setUsuario(String usuario){
    this.usuario = usuario;
  }

  String getEmail(){
    return email;
  }
  void setEmail(String email){
    this.email = email;
  }

}

class PetData {
  late String nombre;
  late String edad;
  late String raza;
  
  String getNombre(){
    return nombre;
  }
  void setNombre(String nombre){
    this.nombre = nombre;
  }

  String getEdad(){
    return edad;
  }
  void setEdad(String edad){
    this.edad = edad;
  }
  String getRaza(){
    return raza;
  }
  void setRaza(String nombre){
    this.raza = raza;
  }

}

class PetPlusData {
  late String codigo;
  late String habitacion;
  late String alimento;
  late String gato;
  
  String getCodigo(){
    return codigo;
  }
  void setCodigo(String codigo){
    this.codigo = codigo;
  }

  String getHabitacion(){
    return habitacion;
  }
  void setHabitacion(String habitacion){
    this.habitacion = habitacion;
  }

  String getAlimento(){
    return alimento;
  }
  void setAlimento(String alimento){
    this.alimento = alimento;
  }

  String getGato(){
    return gato;
  }
  void setGato(String gato){
    this.gato = gato;
  }

}