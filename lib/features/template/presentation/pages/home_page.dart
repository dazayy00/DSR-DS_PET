import 'package:flutter/material.dart';
//import 'package:petplus/features/template/presentation/pages/registrar_dispositivo.dart';

class HomePage extends StatelessWidget{

  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: const Text('M I  H O G A R'),
      ),

      drawer: Drawer(
        child: ListView(
          
          padding: EdgeInsets.zero,
          
          children: <Widget>[
            
            const DrawerHeader(
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.person_sharp,
                    color: Colors.black,
                    size: 60,
                  ),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Text('TestUser',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),
                        ),

                        Text('test.user@testmail.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15
                        ),
                        )
                      ],
                    ),                    
                  )
                ]
              ),
            ),

            ListTile(        
              leading: const Icon(Icons.home),       
              title: const Text('INICIO '),
              onTap: () => 
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  )),                            
            ),
            
            const ListTile(
              leading: Icon(Icons.pets_sharp),
              title: Text('AÑADIR AMIGO'),
              
            ),

            ListTile(
              leading: const Icon(Icons.sensors_sharp),
              title: const Text('REGISTRAR PET+'),
              //onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute( builder: (context) => const RegistrarDispositivo(),)),
            ),
            
            const ListTile(
              leading: Icon(Icons.logout_sharp),
              title: Text('SALIR'),
            ),

          ],
        ),
      ),

      

    );
  }

}