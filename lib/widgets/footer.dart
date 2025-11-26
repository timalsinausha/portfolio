import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      padding: const EdgeInsets.all(24),
      child: const Center(
        child: Text(
          '© 2025 Usha Timalsina | Built with Flutter',
          style: TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}
