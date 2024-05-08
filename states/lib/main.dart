import 'dart:math';

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

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String contra = '';

  String _generatePass(int charNumber) {
    return String.fromCharCodes(
      List.generate(charNumber, (index) => Random().nextInt(48) + 60),
    );
  }

  void changePass() {
    contra = _generatePass(32);
    setState(() {});
  }

  void borrar() {
    contra = '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Generar contras'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Text("32 Caracteres:"),
                  Row(
                    children: [
                      Expanded(
                        child: Text("$contra"),
                      ),
                      IconButton(
                          onPressed: () {
                            changePass();
                          },
                          icon: Icon(Icons.refresh)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.copy)),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  changePass();
                },
                child: Text("Generate pass")),
            OutlinedButton(
                onPressed: () {
                  borrar();
                },
                child: Text("Borrar Contra")),
          ],
        ));
  }
}
