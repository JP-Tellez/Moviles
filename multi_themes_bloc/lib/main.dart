import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_themes_bloc/theme/bloc/theme_bloc.dart';

import 'home/home_page.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => ThemeBloc(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Change Themes App',
          theme: state.themeData,
          home: HomePage(),
        );
      },
    );
  }
}
