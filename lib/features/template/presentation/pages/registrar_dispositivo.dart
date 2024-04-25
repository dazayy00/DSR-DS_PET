import 'package:flutter/material.dart';
import 'package:petplus/features/template/presentation/pages/configurar_dispositivo.dart';

class RegistrarDispositivo extends StatelessWidget{
  const RegistrarDispositivo({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
          
      appBar: AppBar(
        title: const Text('Buscar dispositivo'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
            Icons.podcasts, 
            size: 72, 
    ),
          const SizedBox(height: 35),
            
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20), // Ajusta el margen como necesites
          child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade300,
                  filled: true,
                  labelText: 'Código de vinculación',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.local_see_outlined),
                    onPressed: () {
                      // Código para abrir la cámara
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), // Ajusta el radio del borde como necesites
                    borderSide: const BorderSide(
                      color: Colors.black, // Ajusta el color del borde como necesites
                      width: 2, // Ajusta el ancho del borde como necesites
                    ),
                  ),
                ),
              ),
            ),  
            const SizedBox(height: 20),
            
      ElevatedButton(
              onPressed: () {
                //al presionar el botón te redirija a la pantalla de configurar_dispositivo.dart
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ConfigurarDispositivo()),
                );

              },
              child: const Text('Buscar'),
            ),
          ],
        ),
      ),
    );
  }
}