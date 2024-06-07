import 'package:flutter/material.dart';

class Clock_Widget extends StatefulWidget {
  const Clock_Widget({super.key});

  @override
  State<Clock_Widget> createState() => _Clock_WidgetState();
}

class _Clock_WidgetState extends State<Clock_Widget> {
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${selectedTime.hour}:${selectedTime.minute}"),

          ElevatedButton(
            onPressed: () async {
              ThemeData themeData = ThemeData(
      //primaryColor: Colors.red, // Cambia el color principal del tema
      colorScheme: ColorScheme.light(primary: Colors.green), // Cambia el color de fondo del tema
      textTheme: TextTheme( // Cambia el estilo de texto del tema
        titleMedium: TextStyle(color: Colors.black), // Cambia el color del texto
      ),
      timePickerTheme: TimePickerThemeData( // Define el tema específico del TimePicker
        //hourMinuteColor: Colors.white, // Cambia el color de las manecillas
        dayPeriodColor: Colors.green, // Cambia el color de la selección (AM/PM)
      ),
    );

              final TimeOfDay? timeOfDay = await showTimePicker(
                context: context,
                initialTime: selectedTime,
                initialEntryMode: TimePickerEntryMode.dial,
                cancelText: 'Cancelar', // Cambia el texto del botón de cancelar
                confirmText: 'Confirmar',
                helpText: 'Seleccione la hora de activación',
                hourLabelText: 'Hora',
                minuteLabelText: 'Minuto',
                errorInvalidText: 'Introduce una hora valida',

                builder: (BuildContext context, Widget? child) {
        return Theme(data: themeData, child: child!); // Aplica el tema al TimePicker
      },
                );
                if(timeOfDay != null){
                  setState(() {
                    selectedTime = timeOfDay;
                  });
                }
            }, 
            child: Text('Elige la hora: ')
          ),

        ],
      ),

    );
  }
}