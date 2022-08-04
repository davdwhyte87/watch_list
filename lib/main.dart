import 'package:flutter/material.dart';
import 'package:watch_list/styles/material_color.dart';
import 'package:watch_list/pages/home_page.dart';
import 'package:watch_list/pages/pro_page.dart';
import 'package:watch_list/styles/text_theme.dart';

void main() {

  
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: const Color(0xFFE50914),
      primarySwatch:  generateMaterialColorFromColor(Color(0xFFE50914)),

      primaryTextTheme: TextTheme(
        bodySmall: Body2TextStyle
      )
    ),
    routes: {
      '/h': (context)=> ProfilePage(),
      '/': (context)=> HomePage()
    },
  ));
}



