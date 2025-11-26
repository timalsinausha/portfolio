import 'package:flutter/material.dart';
import 'about_screen.dart';
import 'firstIntro.dart';
import 'projects_screen.dart';
import 'contact_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  String selectedSection = 'Home';

  Widget buildBody() {
    switch (selectedSection) {
      case 'Home':
        return const Introduction_Page();
      case 'About':
        return const AboutScreen();
      case 'Service':
        return const ContactScreen();
      case 'Portfolio':
        return const ProjectsScreen();
      default:
        return const Center(
          child: Text("Select a section", style: TextStyle(color: Colors.white)),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sidebar
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  padding: const EdgeInsets.only(top: 45),
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      const Text("Usha Timalsina",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      const Text("Flutter Developer | UI Builder",
                          style: TextStyle(color: Colors.white70)),
                      const SizedBox(height: 8),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 100,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text("Contact me", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Divider(thickness: 2, color: Colors.white30),
                      const SizedBox(height: 8),

                      // Menu items
                      buildNavItem('Home', Icons.home),
                      buildNavItem('About', Icons.person_2),
                      buildNavItem('Service', Icons.swipe_down),
                      buildNavItem('Portfolio', Icons.home_repair_service),
                    ],
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(left: 60),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/images/profile.jpeg")
                    // NetworkImage(
                    //     "https://i.pinimg.com/736x/3e/d3/3a/3ed33ad704fc558ac72f0731d7648ead.jpg"),
                  ),
                )
              ],
            ),

            const SizedBox(width: 20),

            // Body (dynamic area)
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 40),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: buildBody(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNavItem(String title, IconData icon) {
    bool isSelected = selectedSection == title;
    return InkWell(
      onTap: () {
        setState(() {
          selectedSection = title;
        });
      },
      child: Container(
        width: 140,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: isSelected
              ? Colors.white.withOpacity(0.4)
              : Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Icon(icon, size: 16, color: Colors.white),
            const SizedBox(width: 6),
            Text(title, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//          appBar: AppBar(
//             title: const Text("My Portfolio"),
//             bottom: const TabBar(
//               tabs: [
//                 Tab(text: "Home"),
//                 Tab(text: "About"),
//                 Tab(text: "Projects"),
//                 Tab(text: "Contact"),
//               ],
//             ),
//           ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: const [
//               // Row(children: [
//               //   Text("Portfolio"),
      
      
//               // ],)
      
//               Header(),
//               AboutScreen(),
//               ProjectsScreen(),
//               ContactScreen(),
//                Footer(), 
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
