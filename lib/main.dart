import 'package:flutter/material.dart';
import 'pages/pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.orange),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
