import 'package:flutter/material.dart';
import 'package:forage/add_page.dart';
import 'package:forage/details.dart';
import 'package:forage/providers/forage_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forage',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: context.watch<ForageProvider>().getLista.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
                "${context.watch<ForageProvider>().getLista[index]["name"]}"),
            subtitle: Text(
                "${context.watch<ForageProvider>().getLista[index]["location"]}"),
            onTap: () {
              context.read<ForageProvider>().setSelected(index);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Details()));
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddPage()));
        },
        backgroundColor: Colors.purple,
        shape: CircleBorder(),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
