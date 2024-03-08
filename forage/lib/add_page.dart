import 'package:flutter/material.dart';
import 'package:forage/providers/forage_provider.dart';
import 'package:provider/provider.dart';

class AddPage extends StatelessWidget {
  AddPage({super.key});

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
          children: [
            TextField(
              controller: context.watch<ForageProvider>().getNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: context.watch<ForageProvider>().getLocationController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Location",
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: context.watch<ForageProvider>().getCheckBox,
                  onChanged: (newValue) {
                    context.read<ForageProvider>().setCheckbox(newValue);
                  },
                ),
                Text("Currently in season")
              ],
            ),
            TextField(
              controller: context.watch<ForageProvider>().getNotesController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Notes",
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  child: Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    context.read<ForageProvider>().elSave();
                    Navigator.of(context).pop(context);
                    // hacerle reset a los controllers
                    context.read<ForageProvider>().elDelete();
                  },
                ),
                MaterialButton(
                  child: Text(
                    "Reset",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    context.read<ForageProvider>().elDelete();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
