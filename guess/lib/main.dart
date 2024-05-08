import 'package:flutter/material.dart';
import 'package:guess/providers/guess_provider.dart';
import 'package:guess/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<GuessProvider>(
      create: (context) => GuessProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guess the word',
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)),
      home: HomePage(),
    );
  }
}
