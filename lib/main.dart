import 'package:flutter/material.dart';
import 'package:test_app/RouteGenerator.dart';
import 'package:test_app/constants.dart';
import 'package:test_app/source.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Routes.generateRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: source,
    );
  }
}
