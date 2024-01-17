import 'package:flutter/material.dart';
import 'package:ejercicio1/widgets/nav.dart';
import 'package:ejercicio1/widgets/widgetsPage.dart';

class WidgetPage extends StatelessWidget {
  WidgetPage({super.key});

  @override
  Widget build(BuildContext body) {
    return Expanded(
      child:
          //const Nav(),
          WidgetsPage(),
    );
  }
}
