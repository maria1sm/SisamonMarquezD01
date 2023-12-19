import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
        bottom: 16.0,
        left: 220.0,
        right: 220.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 12.0),
                child: FlutterLogo(
                  size: 100,
                  style: FlutterLogoStyle.markOnly,
                ),
              ),
              Text(
                "Flutter",
                style: TextStyle(fontSize: 45, color: Colors.black),
              ),
            ],
          ),
          Container(
            width: 450,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Inicio",
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
                Text(
                  "Widgets",
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
                Text(
                  "About",
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: Icon(
                    Icons.search,
                    size: 40,
                    color: Color.fromARGB(255, 98, 98, 98),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
/*
Scaffold(
        appBar: AppBar(
      title: const Text('AppBar Demo'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add_alert),
          tooltip: 'Show Snackbar',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar')));
          },
        ),
        IconButton(
          icon: const Icon(Icons.navigate_next),
          tooltip: 'Go to the next page',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Next page'),
                  ),
                  body: const Center(
                    child: Text(
                      'This is the next page',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                );
              },
            ));
          },
        ),
      ],
    ));
  }
*/ 