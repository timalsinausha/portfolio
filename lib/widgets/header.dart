import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: const [
          Text("👋 Hi, I'm Usha Timalsina", style: TextStyle(fontSize: 24)),
          Text("Flutter Developer", style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
