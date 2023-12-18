import 'package:flutter/material.dart';
import 'package:ejercicio1/widgets/nav.dart';
import 'package:ejercicio1/widgets/componentes.dart';
import 'package:ejercicio1/widgets/contador.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext body) {
    return SingleChildScrollView(
      child: Column(children: [
        const Nav(),
        Container(
          height: MediaQuery.of(body).size.height - 112,
          child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Componente1(),
                Componente2(),
              ]),
        ),
        Container(
          height: MediaQuery.of(body).size.height,
          width: MediaQuery.of(body).size.width,
          color: Color.fromARGB(255, 111, 190, 254),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Contador(),
            ],
          ),
        )
      ]),
    );
  }
}
