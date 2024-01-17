import 'package:flutter/material.dart';
import 'package:ejercicio1/widgets/nav.dart';
import 'package:ejercicio1/widgets/componentes.dart';
import 'package:ejercicio1/widgets/contador.dart';
import 'package:ejercicio1/widgets/aboutPage.dart';

/*class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext body) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const Nav(),
        ]),
      ),
    );
  }
}*/

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return AboutPage();
  }
}
