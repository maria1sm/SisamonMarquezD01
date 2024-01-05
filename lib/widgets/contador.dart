import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ejercicio1/widgets/button.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int num = 0;

  void _incrementar() {
    setState(() {
      num++;
    });
  }

  void _reset() {
    setState(() {
      num = 0;
    });
  }

  void _decrementar() {
    setState(() {
      if (num <= 0) {
        num = 0;
      } else {
        num--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            num.toString(),
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 330,
                  fontWeight: FontWeight.w100,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: 500,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Button(onPressed: _decrementar, text: "-1" /*icon: false*/
                      ),
                  Button(
                    onPressed: _reset, /*icon: true*/
                  ),
                  Button(onPressed: _incrementar, text: "+1" /*icon: false*/
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
