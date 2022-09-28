import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:watch_list/pages/home_holder.dart';
import 'package:watch_list/pages/sign_in_page.dart';
import 'package:watch_list/services/google_signin.dart';
import 'package:watch_list/styles/material_color.dart';
import 'package:watch_list/pages/home_page.dart';
import 'package:watch_list/pages/pro_page.dart';
import 'package:watch_list/styles/text_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future main() async {
  // initFirebase();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GoogleSignInProvider())
      ],
      child: MaterialApp(
        theme: ThemeData(
            primaryColor: const Color(0xFFE50914),
            primarySwatch:
                generateMaterialColorFromColor(const Color(0xFFE50914)),
            primaryTextTheme: const TextTheme(bodySmall: Body2TextStyle)),
        routes: {
          '/': (context) => const HomeHolder(),
          '/home': (context) => const HomePage(),
          '/h': (context) => const ProfilePage(),
        },
      ),
    );
  }
}

Future initFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
