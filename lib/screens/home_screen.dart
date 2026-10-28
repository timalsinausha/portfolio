import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:usha_protfolio/screens/projectCard.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  String selectedSection = 'Home';

Future<void> openLink(String url) async {
  final Uri uri = Uri.parse(url);

  if (!await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not open $url');
  }
}
  // Widget buildBody() {
  //   switch (selectedSection) {
  //     case 'Home':
  //       return const Introduction_Page();
  //     case 'About':
  //       return const AboutScreen();
  //     case 'Service':
  //       return const ContactScreen();
  //     case 'Portfolio':
  //       return const ProjectsScreen();
  //     default:
  //       return const Center(
  //         child: Text("Select a section", style: TextStyle(color: Colors.white)),
  //       );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 50,right: 50),
        child: SingleChildScrollView(
          child: Container(
            color:const Color(0xFF0D0E12),
            padding:const EdgeInsets.only(left: 100, right: 100, top: 50
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Row(children: [
                  Text("Usha Timalsina",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white,),),
                  Spacer(),
                  Text("Work",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                  SizedBox(width: 32,),
                  Text("Contact",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                   SizedBox(width: 32,),
                  Text("About Me",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
          
                ],),
               const  Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("AVAILABLE FOR FREELANCE / FULL-TIME",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12,color: Color(0XFF00D2FF)),),
                ],),
               const SizedBox(height: 15,),
                Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 48,
                        height: 1.5,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(text: 'I build high-performance\napps in '),
                        TextSpan(
                          text: 'Flutter',
                          style: TextStyle(color: Color(0XFF00D2FF)),
                        ),
                        TextSpan(text: ' & design \nthem beautifully in '),
                        TextSpan(
                          text: 'Figma.\n',
                          style: TextStyle(color: Color(0xFF57EB5A)),
                        ),
                         
                         TextSpan(text: 'I am a Flutter Developer passionate about turning pixel-perfect designs\ninto high-performance apps. Combining structural UI/UX thinking with\nclean, scalable code, I build seamless digital experiences.',style: TextStyle(
                          fontSize: 18,color: Color(0XFFAFA3A3)
                         )),
                      ],
                    ),
                  ),
                ),
              ),
             const SizedBox(height: 24,),
          
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color(0XFF0000FF),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child:const Text("View Project",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  ),
                 const SizedBox(width: 10,),
                  Container(
                    padding:const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 2),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child:const Text("Download CV",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  ),
                  const SizedBox(width: 10,),
                   Container(
                    padding:const EdgeInsets.all(5),
                    child: const Text("Get In Touch",style: TextStyle(color: Color(0Xff94A3B8),fontWeight: FontWeight.bold,fontSize: 16),))
          
                ],
              ),
          
            const  SizedBox(height: 30,),
            const Text("Select Work",style: TextStyle(color: Color(0XFF00F5A0),fontSize: 14, fontWeight: FontWeight.bold),),
            const SizedBox(height: 30,),
            LayoutBuilder(
  builder: (context, constraints) {
    final isMobile = constraints.maxWidth < 650;

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),

      itemCount: 4,

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 1 : 2,
        crossAxisSpacing: 24,
        mainAxisSpacing: 24,
        mainAxisExtent: isMobile ? 460 : 420,
      ),

      itemBuilder: (context, index) {
        final projects = [
          {
            'title': 'BookMart Application',
            'description':
                'An e-commerce mobile application with product browsing, search, cart management, and checkout.',
            'image':
                'assets/images/bookmart.png',
            'technologies': [
              'Flutter',
              'Provider',
              'REST API',
              'Firebase',
            ],
            'url': 'https://gitlab.com/next-step3/e-book',
          },
          {
            'title': 'CareerPathNepal',
            'description':
                'A career guidance application that helps students explore careers, courses, and colleges based on assessment results.',
            'image':
                'assets/images/bookmart.png',
            'technologies': [
              'Flutter',
              'Django REST Framework',
              'PostgreSQL',
              'Provider',
            ],
            'url': 'https://github.com/timalsinausha/careerPathNepal',
          },
          {
            'title': 'NepalEVCharge',
            'description':
                'An EV charging station discovery application with map-based location features.',
            'image':
                'assets/images/bookmart.png',
            'technologies': [
              'Flutter',
              'Firebase',
              'Google Maps',
            ],
            'url': 'https://github.com/timalsinausha/evCharging_station',
          },
          {
            'title': 'Smart Incident Reporter',
            'description':
                'An application for reporting incidents with cloud-based data storage and state management.',
            'image':
                'assets/images/bookmart.png',
            'technologies': [
              'Flutter',
              'Riverpod',
              'Firebase',
              'Cloudinary',
            ],
            'url':
                'https://github.com/timalsinausha/smart_incidentRepoter',
          },
        ];

        final project = projects[index];

        return ProjectCard(
          title:  project['title'] as String,
          description: project['description'] as String,
          imageUrl: project['image'] as String,
          technologies: project['technologies'] as List<String>,
          projectUrl: project['url'] as String,
        );
      },
    );
  },
),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Container(
            //       decoration: BoxDecoration(
            //         color: Color(0XFF1A1C23),
            //         borderRadius: BorderRadius.circular(16)
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             SizedBox(
            //               height: 200,
            //               width: 400,
            //               child: Image.network("https://media.istockphoto.com/id/1830042746/photo/document-management-system-dms-with-arrange-folder-and-files-icons-man-setup-storage-backup.jpg?s=612x612&w=0&k=20&c=t8oAAO16j6fMhleAYJEXm5pSXFIDZrEG6sYJkv_Sdos="),
            //             ),
            //             SizedBox(height: 24,),
            //             Text("BookMart Application", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            //             // SizedBox(height: 10,),
            //             Text("Ecommerce mobile application with payment integration.", style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal, color: Color(0XFF94A3B8)),),
            //             SizedBox(height: 10,),
            //              Row(
            //                children: [
            //                  Container(
            //                                      padding:const EdgeInsets.all(5),
            //                                      decoration: BoxDecoration(
            //                                        border: Border.all(color: Colors.white,width: 0.5),
            //                                        borderRadius: BorderRadius.circular(10)
            //                                      ),
            //                                      child:const Text("Flutter",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),
            //                                    ),
            //                                    SizedBox(width: 5,),
            //                                      Container(
            //         padding:const EdgeInsets.all(5),
            //         decoration: BoxDecoration(
            //           border: Border.all(color: Colors.white,width: 0.5),
            //           borderRadius: BorderRadius.circular(10)
            //         ),
            //         child:const Text("Provider",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),
            //       ),
            //        SizedBox(width: 5,),
            //                                      Container(
            //         padding:const EdgeInsets.all(5),
            //         decoration: BoxDecoration(
            //           border: Border.all(color: Colors.white,width: 0.5),
            //           borderRadius: BorderRadius.circular(10)
            //         ),
            //         child:const Text("Figma",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),
            //       ),
            //        SizedBox(width: 5,),
            //                                      Container(
            //         padding:const EdgeInsets.all(5),
            //         decoration: BoxDecoration(
            //           border: Border.all(color: Colors.white,width: 0.5),
            //           borderRadius: BorderRadius.circular(10)
            //         ),
            //         child:const Text("Firebase",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),
            //       ),
            //                ],
            //              ),
            //              SizedBox(height: 10,),
            //              GestureDetector(
            //             onTap: () {
            //               openLink('https://gitlab.com/next-step3/e-book');
            //             },
            //             child: const Text(
            //               'https://gitlab.com/next-step3/e-book',
            //               style: TextStyle(
            //                 color: Color(0xFF38BDF8),
            //                 fontSize: 12,
            //                 decoration: TextDecoration.underline,
            //               ),
            //             ),
            //           )        
            //           ],
            //         ),
            //       ),
            //     )
          
                
            //   ],
            // ),
          
              const SizedBox(height: 50)
              ],
            )
          ),
        )
        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     // Sidebar
        //     Stack(
        //       children: [
        //         Container(
        //           margin: const EdgeInsets.only(top: 40),
        //           padding: const EdgeInsets.only(top: 45),
        //           width: 200,
        //           decoration: BoxDecoration(
        //             color: Colors.white.withOpacity(0.2),
        //             borderRadius: BorderRadius.circular(15),
        //           ),
        //           child: Column(
        //             children: [
        //               const Text("Usha Timalsina",
        //                   style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        //               const SizedBox(height: 8),
        //               const Text("Flutter Developer | UI Builder",
        //                   style: TextStyle(color: Colors.white70)),
        //               const SizedBox(height: 8),
        //               InkWell(
        //                 onTap: () {},
        //                 child: Container(
        //                   width: 100,
        //                   alignment: Alignment.center,
        //                   padding: const EdgeInsets.all(5),
        //                   decoration: BoxDecoration(
        //                     color: Colors.white.withOpacity(0.2),
        //                     borderRadius: BorderRadius.circular(5),
        //                   ),
        //                   child: const Text("Contact me", style: TextStyle(color: Colors.white)),
        //                 ),
        //               ),
        //               const SizedBox(height: 8),
        //               const Divider(thickness: 2, color: Colors.white30),
        //               const SizedBox(height: 8),

        //               // Menu items
        //               buildNavItem('Home', Icons.home),
        //               buildNavItem('About', Icons.person_2),
        //               buildNavItem('Service', Icons.swipe_down),
        //               buildNavItem('Portfolio', Icons.home_repair_service),
        //             ],
        //           ),
        //         ),
        //          Padding(
        //           padding: EdgeInsets.only(left: 60),
        //           child: CircleAvatar(
        //             radius: 40,
        //             backgroundImage: AssetImage("assets/images/profile.jpeg")
        //             // NetworkImage(
        //             //     "https://i.pinimg.com/736x/3e/d3/3a/3ed33ad704fc558ac72f0731d7648ead.jpg"),
        //           ),
        //         )
        //       ],
        //     ),

        //     const SizedBox(width: 20),

        //     // Body (dynamic area)
        //     // Expanded(
        //     //   child: Container(
        //     //     margin: const EdgeInsets.only(top: 40),
        //     //     padding: const EdgeInsets.all(20),
        //     //     decoration: BoxDecoration(
        //     //       color: Colors.white.withOpacity(0.1),
        //     //       borderRadius: BorderRadius.circular(15),
        //     //     ),
        //     //     child: buildBody(),
        //     //   ),
        //     // ),
        //   ],
        // ),
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
