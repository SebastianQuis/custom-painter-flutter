import 'package:custom_painter/screens/headers_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diseños App',
      initialRoute: 'headers',
      debugShowCheckedModeBanner: false,
      routes: {
        'headers' :(_) => HeadersScreen(),
      },
    );
  }
}