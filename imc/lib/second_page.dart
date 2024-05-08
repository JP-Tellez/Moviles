import 'package:flutter/material.dart';

// statef de widget para iniciar este
class SecondPage extends StatelessWidget {
  final String imc;
  final bool male;
  final bool female;

  const SecondPage({
    super.key,
    required this.imc,
    required this.male,
    required this.female,
  });

  @override
  Widget build(BuildContext context) {
    // Asegurarse de que sea scaffold
    return Scaffold(
        appBar: AppBar(title: Text("Details")),
        body: Column(
          children: [
            Text("IMC: $imc"),
            Text("Genero: ${male | female}"),
          ],
        ));
  }
}
