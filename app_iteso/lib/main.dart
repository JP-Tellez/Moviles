// pubspec.yaml linea 48 para los const

// control punto para extraer un widget

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Iteso'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://cruce.iteso.mx/wp-content/uploads/2021/05/ITESO.jpg",
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "En ITESO",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "San Pedro Tlaquepaque, Jal",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.access_alarm)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                      iconSize: 64,
                      onPressed: () {
                        // AQUI MERO ES EL SNACKBAR
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Direccion del ITESO"),
                          ),
                        );
                      },
                      icon: Icon(Icons.directions),
                    ),
                    Text("Direccion"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      iconSize: 64,
                      onPressed: () {
                        // AQUI MERO ES EL SNACKBAR
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Direccion del ITESO"),
                          ),
                        );
                      },
                      icon: Icon(Icons.directions),
                    ),
                    Text("Direccion"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      iconSize: 64,
                      onPressed: () {
                        // AQUI MERO ES EL SNACKBAR
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Direccion del ITESO"),
                          ),
                        );
                      },
                      icon: Icon(Icons.directions),
                    ),
                    Text("Direccion"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 64,
            ),
            Text(
              "El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnologico y Estudios Superiores de Occidente) es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, Mexico, fundada en el anio 1957",
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
