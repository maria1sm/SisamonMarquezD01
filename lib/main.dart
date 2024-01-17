import 'package:ejercicio1/pages/home.dart';
import 'package:ejercicio1/pages/widgetPage.dart';
import 'package:ejercicio1/pages/about.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized

  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Ejercicio 01',
      initialRoute: '/home',
      routes: {
        '/home': (_) => const Home(),
        '/widgets': (_) => WidgetPage(),
        '/about': (_) => const About(),
      },
      /*
      home: Scaffold(
        body: Content(),
      ),*/
    ),
  );
}
