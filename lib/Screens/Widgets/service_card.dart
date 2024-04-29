import 'package:flutter/material.dart';
import 'package:pet_plus_ver01/Screens/Widgets/TimeWidget.dart';

class ServiceCard extends StatefulWidget {
  final IconData icon;
  bool state;
  final int availability;
  final String nextRound;
  //final bool thumbsUp;
  final double iconSize;

ServiceCard({
    required this.icon,
    required this.state,
    required this.availability,
    required this.nextRound,
    //required this.thumbsUp,
    this.iconSize = 40,
  });

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  late bool _value;
  @override
  Widget build(BuildContext context) {
    _value = widget.state;
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
                    IconButton(
                      icon: Icon(widget.icon, color: widget.state ? Colors.blue : Colors.red, 
                    size: widget.iconSize),
                    onPressed: () {
                      setState(() {
      widget.state = !widget.state;
    });
              print('Botón presionado bool');
            },
                    ),
                    /*IconButton(onPressed: onPressed, 
                    widget.icon, color: widget.state ? Colors.blue : Colors.red, 
                    size: widget.iconSize),*/
                    /*Icon(widget.icon, color: widget.state ? Colors.blue : Colors.red, 
                    size: widget.iconSize),*/
                    Text(
                      widget.state ? 'Encendido' : 'Apagado',
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 5, 2, 2),
                      ),
                    ),
                    
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () async {
                        Navigator.pushNamed(context, "/RegisterPetP1");
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
                          //availability.split(': ')[1],
                          widget.availability.toString() + 'g',
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
                Time_Widget(
                      onTimeSelected: (TimeOfDay time) {
                        print('Hora seleccionada sc: ${time.format(context)}');
                      },
                    ),
                Text(
                  'Próxima ronda: ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Text(
                  //nextRound.split(': ')[1] + '🕒',
                  widget.nextRound,
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
                Text('michi',
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFFecd391),
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
