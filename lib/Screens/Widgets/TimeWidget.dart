import 'package:flutter/material.dart';

class Time_Widget extends StatefulWidget {
  final void Function(TimeOfDay)? onTimeSelected;
  const Time_Widget({Key? key, this.onTimeSelected}) : super(key: key);

  get selectedTime => null;

  @override
  State<Time_Widget> createState() => _Time_Widget();
}

class _Time_Widget extends State<Time_Widget> {

  TimeOfDay selectedTime = TimeOfDay.now();
  
  @override
  
  Widget build(BuildContext context) {
    return Center(
      child: 
      IconButton(
        icon: Icon(Icons.timer),
        onPressed: () async {
          print('C');
          _showTimePicker(context);
          
        },
      ),

    );

    

  }

  Future<void> _showTimePicker(BuildContext context) async {

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
    
    final TimeOfDay? pickedTime = await showTimePicker(

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

    if (pickedTime != null && widget.onTimeSelected != null) {
      widget.onTimeSelected!(pickedTime);
    }
  }
}

class TimeUtil {
  static TimeOfDay getHour() {
    TimeOfDay? statedHour = null;

    getHour(_Time_Widget hour){
      statedHour = hour.selectedTime;
      print('Hora: $statedHour');
    }
    
    return statedHour!;
  }
}