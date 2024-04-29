import 'package:flutter/material.dart';
import 'package:pet_plus_ver01/Screens/UserScreens/MainScreenU.dart';

class Lateral_Menu extends StatelessWidget {
  const Lateral_Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
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
                        Row(
                          children: [
                            Text('TestUser',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),
                        ),
                        ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/EditAccount");
                      },
                      style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all<double>(0),
                    shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0), // Sin bordes
                    ),
                    ),
                  ),
                      child: Image.asset(
                      'assets/lapiz(1).png',
                      width: 24.0,
                      height: 24.0,
                    ),
                  ),
                          ],
                        ),
                        
                        Text('test.user@testmail.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15
                        ),
                        ),
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
              Navigator.pushNamed(context, "/home"),                    
            ),
            
            ListTile(
              leading: Icon(Icons.pets_sharp),
              title: Text('AÑADIR AMIGO'),
              onTap: () => 
                Navigator.pushNamed(context, "/RegisterCat"),
            ),
            
            ListTile(
              leading: const Icon(Icons.sensors_sharp),
              title: const Text('REGISTRAR PET+'),
              onTap: () => 
                Navigator.pushNamed(context, "/RegisterPetP1"),
            ),
            
            ListTile(
              leading: Icon(Icons.logout_sharp),
              title: Text('SALIR'),
              onTap: () => 
              Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Main_ScreenU()),
              ),
            ),

          ],
        ),
    );
  }
}