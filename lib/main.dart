import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:watch_list/pages/sign_in_page.dart';
import 'package:watch_list/styles/material_color.dart';
import 'package:watch_list/pages/home_page.dart';
import 'package:watch_list/pages/pro_page.dart';
import 'package:watch_list/styles/text_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

main() {
  initFirebase();
  runApp(MaterialApp(
    theme: ThemeData(
        primaryColor: const Color(0xFFE50914),
        primarySwatch: generateMaterialColorFromColor(const Color(0xFFE50914)),
        primaryTextTheme: const TextTheme(bodySmall: Body2TextStyle)),
    routes: {
      '/': (context) => const SignInPage(),
      '/home': (context) => const HomePage(),
      '/h': (context) => const ProfilePage(),
    },
  ));
}

initFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
