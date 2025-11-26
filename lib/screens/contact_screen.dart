import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: const [
          Text("📧 Email: usha@example.com"),
          Text("🌐 LinkedIn: linkedin.com/in/usha-timalsina"),
          Text("🐙 GitHub: github.com/yourusername"),
        ],
      ),
    );
  }
}
