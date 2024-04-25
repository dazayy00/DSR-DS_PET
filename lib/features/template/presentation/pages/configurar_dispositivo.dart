import 'package:flutter/material.dart';
import 'package:petplus/features/template/presentation/pages/home_page.dart';
import 'package:petplus/features/template/presentation/pages/registrar_dispositivo.dart';

class ConfigurarDispositivo extends StatefulWidget {
  const ConfigurarDispositivo({Key? key}) : super(key: key);

  @override
  _ConfigurarDispositivoState createState() => _ConfigurarDispositivoState();
}

class _ConfigurarDispositivoState extends State<ConfigurarDispositivo> {

  String? _selectedValueFood;
  String? _selectedValueRace;

  @override
  Widget build(BuildContext context){

    return Scaffold(
    
      appBar: AppBar(
        title: Text("Configurar Dispositivo"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.settings_suggest_outlined,
              size: 72,
            ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
            children: <Widget>[

            TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade300,
                  filled: true,                  
                  prefixIcon: const Icon(Icons.home_outlined),
                  labelText: 'Habitación',                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15), 
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2, 
                    ),
                  ),
                ),
              ),

            const SizedBox(height: 20),   

            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),

              child: DropdownButtonHideUnderline(
                child: Row(
                  children: <Widget>[

                    Icon(Icons.set_meal),
                    SizedBox(width: 10),
                    Expanded(
                      child: DropdownButton<String>(
                          hint: Text(_selectedValueFood ?? 'Alimento'),
                          icon: const Icon(Icons.arrow_drop_down),
                          items: ['Seco', 'Húmedo'].map((String value){
                            
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                              );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _selectedValueFood = newValue;
                            });
                          },
                      )
                      )

                  ],
                ),
              ),

            ),

            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),

              child: DropdownButtonHideUnderline(
                child: Row(
                  children: <Widget>[

                    const Icon(Icons.pets),
                    const SizedBox(width: 10),
                    
                    Expanded(
                      child: DropdownButton<String>(
                          hint: Text(_selectedValueRace ?? 'Raza'),
                          icon: const Icon(Icons.arrow_drop_down),
                          items: ['Raza 1', 'Raza 2', 'Raza 3'].map((String value){                            
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                              );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _selectedValueRace = newValue;
                            });
                          },
                      )
                      )

                  ],
                ),
              ),

            ),

            const SizedBox(height: 20),  

            ElevatedButton(
              onPressed: () {
                //al presionar el botón te redirija a la pantalla de configurar_dispositivo.dart
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: const Text('Confirmar'),
            ),

            const SizedBox(height: 20),  

            ElevatedButton(
              onPressed: () {
                //al presionar el botón te redirija a la pantalla de configurar_dispositivo.dart
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrarDispositivo()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text('Cancelar')
            ),

          ],
        ),
      )


          ],
        ),
      ),

    );

  }

}