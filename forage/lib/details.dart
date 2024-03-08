import 'package:flutter/material.dart';
import 'package:forage/providers/forage_provider.dart';
import 'package:provider/provider.dart';

class Details extends StatelessWidget {
  // final Map<String, dynamic> selected;
  // No se pueden usar variables, no creo que hubiera pedo
  // con esa pero por si las dudas implemente un selected en el provider

  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forage",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${context.watch<ForageProvider>().getLista[context.watch<ForageProvider>().getSelected]["name"]}",
              style: TextStyle(fontSize: 23),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.location_on),
                title: Text(
                    "${context.watch<ForageProvider>().getLista[context.watch<ForageProvider>().getSelected]["location"]}"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text(
                    "${context.watch<ForageProvider>().getLista[context.watch<ForageProvider>().getSelected]["inSeason"]}"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.menu_open_rounded),
                title: Text(
                    "${context.watch<ForageProvider>().getLista[context.watch<ForageProvider>().getSelected]["notes"]}"),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple,
        shape: CircleBorder(),
        child: Icon(
          Icons.edit,
          color: Colors.white,
        ),
      ),
    );
  }
}
