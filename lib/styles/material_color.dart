import 'package:flutter/material.dart';

MaterialColor generateMaterialColorFromColor(Color color) {
  return MaterialColor(color.value, {
    50: Color.fromRGBO(color.red, color.green, color.blue, 0.1),
    100: Color.fromRGBO(color.red, color.green, color.blue, 0.2),
    200: Color.fromRGBO(color.red, color.green, color.blue, 0.3),
    300: Color.fromRGBO(color.red, color.green, color.blue, 0.4),
    400: Color.fromRGBO(color.red, color.green, color.blue, 0.5),
    500: Color.fromRGBO(color.red, color.green, color.blue, 0.6),
    600: Color.fromRGBO(color.red, color.green, color.blue, 0.7),
    700: Color.fromRGBO(color.red, color.green, color.blue, 0.8),
    800: Color.fromRGBO(color.red, color.green, color.blue, 0.9),
    900: Color.fromRGBO(color.red, color.green, color.blue, 1.0),
  });
}

const Color textColor =  Color(0xFF898787);
const Color primaryColor =  Color(0xFFE50914);
MaterialStateProperty<Color> buttonPrimaryColor = MaterialStateProperty.resolveWith((Set<MaterialState> states) {
  if (states.contains(MaterialState.focused)){
    return primaryColor;
  }
  if (states.contains(MaterialState.hovered)){
    return generateMaterialColorFromColor(primaryColor).shade100;
  }
  if (states.contains(MaterialState.pressed)){
    return generateMaterialColorFromColor(primaryColor).shade300;
  }
  return primaryColor;
});