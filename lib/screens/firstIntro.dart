import 'package:flutter/material.dart';

class Introduction_Page extends StatefulWidget {
  const Introduction_Page({super.key});

  @override
  State<Introduction_Page> createState() => _Introduction_PageState();
}

class _Introduction_PageState extends State<Introduction_Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
  padding: EdgeInsets.all(20),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Left Column - Text
      Expanded(
        flex: 2, // takes half of the Row
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello everyone"),
            SizedBox(height: 8),
            Text(
              "I'm Usha Timalsina",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "Flutter developer",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 10),
            Text(
              "Flutter excites me because it allows me to create beautiful, high-performance apps for both mobile and web from a single codebase. I love how expressive and flexible the UI possibilities are, and how quickly I can turn ideas into interactive experiences. I am always curious to explore new Flutter widgets, experiment with animations, and integrate services like Firebase to make my apps smarter and more engaging. I enjoy learning continuously and pushing my skills to build innovative, user-friendly applications.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Download CV",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                 SizedBox(width: 20),
            Container(
              height: 50,
              width: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "See my work",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
              ],
            ),
          ],
        ),
      ),

      SizedBox(width: 20),

     
      Expanded(
        flex: 1, // takes half of the Row
        child: Container(
          height: 500,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              "assets/images/profile.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ],
  ),
)
;
  }
}