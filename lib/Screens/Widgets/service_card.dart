import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String state;
  final String availability;
  final String nextRound;
  final bool thumbsUp;
  final double iconSize;

  const ServiceCard({
    required this.icon,
    required this.state,
    required this.availability,
    required this.nextRound,
    required this.thumbsUp,
    this.iconSize = 40,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(icon, color: Colors.blue, size: iconSize),
                    Text(
                      state == 'No definida' ? 'Apagado' : 'Encendido',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {
                        print('Configurando servicio...');
                      },
                    ),
                    Row(
                      children: [
                        Text(
                          'Disponible: ',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          availability.split(': ')[1],
                          style: TextStyle(
                            fontSize: 22,
                            color: Color.fromARGB(255, 63, 209, 148),
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                color: Colors.black,
                                offset: Offset(1, 1),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  nextRound.split(': ')[0] + ':',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Text(
                  nextRound.split(': ')[1],
                  style: TextStyle(
                    fontSize: 22,
                    color: Color.fromARGB(255, 63, 209, 148),
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(1, 1),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Reemplazar el texto con la imagen del gato
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/gato.png', // Ruta de la imagen del gato
                  width: 30, // Ajusta el ancho de la imagen según sea necesario
                  height:
                      30, // Ajusta la altura de la imagen según sea necesario
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
