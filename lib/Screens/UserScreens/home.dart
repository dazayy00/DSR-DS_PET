import 'package:flutter/material.dart';
import '../Widgets/service_card.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: const Color.fromARGB(255, 255, 255, 255),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(
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
          SizedBox(height: 20),
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
        ],
      ),
    );
  }
}
