import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tip_time/home_page.dart';
import 'package:tip_time/providers/tip_time_provider.dart';

//control punto en flecha para usar lo del provider, el de block
void main() {
  runApp(
    ChangeNotifierProvider<TipTimeProvider>(
      create: (context) => TipTimeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TipTime App',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.green,
            titleTextStyle: TextStyle(color: Colors.white),
          )),
      home: HomePage(),
    );
  }
}
