import 'package:flutter/material.dart';
import '../Widgets/service_card.dart';
import '../Widgets/LateralMenu.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
              'MI HOGAR',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 44, 193, 219),
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(1, 1),
                    blurRadius: 2,
                  ),
                ],
              ),
            ),
      ),
      drawer: Lateral_Menu(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            ServiceCard(
              icon: Icons.power_settings_new,
              state: false,
              availability: 900,
              nextRound: 'Lun ' + '00:00',
              //thumbsUp: true,
              iconSize: 60,
            ),
            SizedBox(height: 20),
            ServiceCard(
              icon: Icons.power_settings_new,
              state: true,
              availability: 480,
              nextRound: 'Mier ' + '8:40',
              //thumbsUp: true,
              iconSize: 60,
            ),
            SizedBox(height: 20),
            ServiceCard(
              icon: Icons.power_settings_new,
              state: false,
              availability: 0,
              nextRound: 'No definida',
              //thumbsUp: false,
              iconSize: 60,
            ),
            SizedBox(height: 20),
            
          ],
        ),
      ),
    );
  }
}
