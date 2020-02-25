import 'package:OMAR/Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: Controller.getRoutes(context),
      title: 'OMAR',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/SplashScreen',
    );
  }
}
