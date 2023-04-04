import 'package:flutter/material.dart';

class Attend extends StatefulWidget {
  const Attend({super.key});

  @override
  State<Attend> createState() => _AttendState();
}

class _AttendState extends State<Attend> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains) == true) {
        return Color.fromARGB(255, 243, 33, 33);
      } else {
        return Color.fromARGB(255, 45, 141, 251);
      }
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          if (isChecked) {
            isChecked = value!;
          } else {
            isChecked = true;
          }
        });
      },
    );
  }
}
