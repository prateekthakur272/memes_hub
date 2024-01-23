import 'package:flutter/material.dart';
import 'package:myapp/homescreen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MemesHub',
      theme: ThemeData(colorSchemeSeed: Colors.deepPurple),
      darkTheme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

void main(List<String> args) {
  runApp(const App());
}
