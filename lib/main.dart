import 'package:examen_u2/kernel/navigation/navigation.dart';
import 'package:examen_u2/modules/data/screen/data_screen.dart';
import 'package:examen_u2/modules/splash/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(title: 'Cargando ...'),
        '/main': (context) => const MainNavigation(),
        '/data': (context) => const DataScreen()
      },
    );
  }
}
