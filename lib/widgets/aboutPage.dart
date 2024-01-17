import 'package:flutter/material.dart';
import 'package:ejercicio1/widgets/nav.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Nav(),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: SectionTitle('Sobre Mí'),
                ),
                SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 100.0,
                    left: 100.0,
                    bottom: 100.0,
                  ),
                  child: Text(
                    'Hola, soy María Sisamón, estudiante de Desarrollo de Aplicaciones Web (DAW). '
                    'Actualmente, estoy aprendiendo a utilizar Flutter para desarrollar aplicaciones web para móviles y para desktop.',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                SizedBox(height: 16.0),
                SectionTitle('Sobre Flutter'),
                SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 100.0,
                    left: 100.0,
                  ),
                  child: Text(
                    'Flutter es un framework de código abierto desarrollado por Google para '
                    'crear aplicaciones nativas para móviles, web y escritorio desde una sola base de código. '
                    'Sus principales ventajas incluyen un rendimiento rápido, un amplio conjunto de widgets '
                    'personalizables y una comunidad activa.',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
