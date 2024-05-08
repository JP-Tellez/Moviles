import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Clima',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.indigo,
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.orange,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "San Francisco",
                  style: TextStyle(color: Colors.white, fontSize: 36),
                ),
                Text(
                  "Nublado",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.cloud,
                      size: 70,
                      color: Colors.lightBlue,
                    ),
                    Text(
                      "19 C",
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w100,
                          color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      color: Colors.yellow,
                      child: Text("Actualizar datos"),
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              content: Text("Actualizando datos del clima"),
                            ),
                          );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
