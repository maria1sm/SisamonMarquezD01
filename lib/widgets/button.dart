import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final Function onPressed;
  String? text;
  //bool icon;

  Button(
      {super.key, required this.onPressed, this.text /*, required this.icon*/});

  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 144, 205, 255),
          foregroundColor: (Color.fromARGB(255, 255, 255, 255)),
          padding: EdgeInsets.all(25),
          shape: CircleBorder(
            side: BorderSide(
              width: 2.0,
              color: Colors.white,
            ),
          ),
        ),
        child: text != null
            ? Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  text!,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(fontSize: 45, color: Colors.white),
                  ),
                ),
              )
            : Icon(
                size: 40,
                Icons.refresh,
              ));
  }
}
