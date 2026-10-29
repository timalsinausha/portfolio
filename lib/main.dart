import 'package:flutter/material.dart';
import 'screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
  primaryColor: Colors.teal,  // Top color (e.g., app bar)
  scaffoldBackgroundColor: Colors.blueGrey.shade900, // Bottom/background color
  colorScheme:const ColorScheme.dark(
    primary: Colors.teal,
    secondary: Colors.amberAccent,
  ),
  textTheme:const TextTheme(
    bodyMedium: TextStyle(color: Colors.white70),
    headlineSmall: TextStyle(color: Colors.tealAccent),
  ),
),
     home: 
     const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
