import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Text(
            "I’m Usha Timalsina, a passionate Flutter developer who loves turning ideas into beautiful, high-performance mobile and web applications. Flutter excites me because of its cross-platform capabilities, expressive UI, and fast development cycle. I enjoy experimenting with animations, exploring new widgets, and integrating services like Firebase to make apps smarter and more engaging. Through my projects, I aim to create apps that are not only functional but also delightful for users",
            style: TextStyle(fontSize: 16),
          ),

          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                children: [
                  Text("Skills")
                  

                ],
              )),
               Expanded(
                flex: 1,
                child: Column(
                children: [
                  Text("Experiences")

                ],
              )),
               Expanded(
                flex: 1,
                child: Column(
                children: [
                  Text("Certificate")

                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}
