import 'package:flutter/material.dart';
import 'greeting_page.dart';
import 'home_page.dart';
import 'calculator_page.dart';
import 'notes_page.dart';
import 'weather_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/greeting',
      routes: {
        '/greeting': (context) => GreetingPage(),
        '/home': (context) => HomePage(),
        '/calculator': (context) => CalculatorPage(),
        '/notes': (context) => NotesPage(),
        '/weather': (context) => WeatherPage(),
      },
    );
  }
}
