import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Birthday card'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Happy Birthday",
              style: TextStyle(fontSize: 50),
            ),
            Expanded(
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi3g0bil7a64y8jE4oLymF2p7ADMT2XD5g0A&usqp=CAU"),
            ),
            Text(
              "From Mike",
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
    );
  }
}

// const Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Column(
//               children: [
//                 Icon(Icons.account_circle),
//                 Text("Contact"),
//               ],
//             ),
//             Column(
//               children: [
//                 Icon(Icons.access_alarm),
//                 Text("Alarm"),
//               ],
//             ),
//             Column(
//               children: [
//                 Icon(Icons.directions),
//                 Text("Ruta"),
//               ],
//             ),
//           ],
//         ),