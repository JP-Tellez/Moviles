import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String image;
  final String name;
  final int date;
  final String description;

  const DetailsPage({
    super.key,
    required this.image,
    required this.name,
    required this.date,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: ListView(children: [
        Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  image != ""
                      ? Image.network(
                          image,
                          height: 100,
                          fit: BoxFit.cover,
                        )
                      : Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                  SizedBox(
                    height: 50,
                  ),
                  name != "" || date != ""
                      ? Text(
                          "$name\n$date",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      : Text(
                          "No disponible",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                  SizedBox(
                    height: 50,
                  ),
                  description != ""
                      ? Text(
                          "$description",
                          textAlign: TextAlign.justify,
                        )
                      : Text("Descripcion no disponible")
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
