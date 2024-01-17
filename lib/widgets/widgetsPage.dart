import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'package:ejercicio1/widgets/nav.dart';
import 'package:google_fonts/google_fonts.dart';
//import '../widgets/widget1.dart';

class WidgetsPage extends StatefulWidget {
  @override
  _WidgetsPageState createState() => _WidgetsPageState();
}

class _WidgetsPageState extends State<WidgetsPage> {
  List<dynamic> widgets = [];

  // Función para cargar y decodificar el JSON desde assets
  Future<void> loadJsonData() async {
    // Lee el contenido del archivo JSON
    String data = await rootBundle.loadString('assets/widgets.json');

    // Decodifica el JSON y actualiza el estado del widget
    setState(() {
      widgets = jsonDecode(data)['widgets'];
    });
  }

  @override
  void initState() {
    super.initState();
    // Llama a la función para cargar el JSON cuando el widget se inicia
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Customize the navigation according to your needs
            Nav(),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 24.0,
                  mainAxisSpacing: 24.0,
                ),
                shrinkWrap:
                    true, // Ensure that the ListView only occupies the space it needs
                physics:
                    NeverScrollableScrollPhysics(), // Disable scrolling of the GridView
                itemCount: widgets.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlutterLogo(size: 50),
                        SizedBox(height: 10),
                        Text(
                          widgets[index]['nombre'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            widgets[index]['descripcion'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
