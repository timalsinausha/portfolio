import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'testProject.dart';
import 'testProject2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:ThemeData(
  primaryColor: Colors.teal,  // Top color (e.g., app bar)
  scaffoldBackgroundColor: Colors.blueGrey.shade900, // Bottom/background color
  colorScheme: ColorScheme.dark(
    primary: Colors.teal,
    secondary: Colors.amberAccent,
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.white70),
    headlineSmall: TextStyle(color: Colors.tealAccent),
  ),
),
     home: 
     //Another_Page(),
     const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
