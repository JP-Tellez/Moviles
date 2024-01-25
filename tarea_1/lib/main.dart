import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _iconColor = Colors.black;
  Color _iconColor2 = Colors.black;
  Color _iconColor3 = Colors.black;
  Color _iconColor4 = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mc Flutter'),
        ),
        body: Container(
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 50,
                  ),
                  Column(
                    children: [
                      Text(
                        "Flutter McFlutter",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text("Expirienced App Developer")
                    ],
                  )
                ],
              ),
              const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("123 Main Street"), Text("(415)555-0198")],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: const Icon(Icons.accessibility),
                    color: _iconColor,
                    onPressed: () {
                      setState(() {
                        if (_iconColor == Colors.black) {
                          _iconColor = Colors.indigo;
                        } else {
                          _iconColor = Colors.black;
                        }
                      });
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.access_time_filled),
                    color: _iconColor2,
                    onPressed: () {
                      setState(() {
                        if (_iconColor2 == Colors.black) {
                          _iconColor2 = Colors.indigo;
                        } else {
                          _iconColor2 = Colors.black;
                        }
                      });
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.ad_units),
                    color: _iconColor3,
                    onPressed: () {
                      setState(() {
                        if (_iconColor3 == Colors.black) {
                          _iconColor3 = Colors.indigo;
                        } else {
                          _iconColor3 = Colors.black;
                        }
                      });
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.phone),
                    color: _iconColor4,
                    onPressed: () {
                      setState(() {
                        if (_iconColor4 == Colors.black) {
                          _iconColor4 = Colors.indigo;
                        } else {
                          _iconColor4 = Colors.black;
                        }
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
