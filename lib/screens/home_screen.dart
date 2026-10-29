import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:usha_protfolio/screens/contactlink.dart';
import 'package:usha_protfolio/screens/projectCard.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
final GlobalKey workKey = GlobalKey();
final GlobalKey aboutKey = GlobalKey();
final GlobalKey contactKey = GlobalKey();

Future<void> openLink(String url) async {
  final Uri uri = Uri.parse(url);

  if (!await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not open $url');
  }
}

void scrollToSection(GlobalKey key) {
  final context = key.currentContext;

  if (context != null) {
    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
      alignment: 0.05,
    );
  }
}

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
                Row(children: [
                  Text("Usha Timalsina",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white,),),
                  Spacer(),
                   InkWell(
                    onTap: () => scrollToSection(workKey),
                    child: const Text(
                      "Work",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  const SizedBox(width: 32),

                  InkWell(
                    onTap: () => scrollToSection(contactKey),
                    child: const Text(
                      "Contact",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  const SizedBox(width: 32),

                  InkWell(
                    onTap: () => scrollToSection(aboutKey),
                    child: const Text(
                      "About Me",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               key: workKey,
              children: [
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
                            'assets/images/ebook das.png',
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
                            'assets/images/careerresult.png',
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
                            'assets/images/home page.png',
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
                            'assets/images/incidenthomepage.jpg',
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
              ],
            ),
           

 const  SizedBox(height: 30,),
         Row(
   key: aboutKey,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    // LEFT SIDE: ABOUT ME
    Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "About Me",
            style: TextStyle(
              color: Color(0xFF00F5A0),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          const Text(
            "I am a passionate developer focused on building seamless "
            "mobile experiences. I bridge the gap between clean code "
            "in Flutter and beautiful interfaces in Figma to create "
            "user-friendly applications.",
            style: TextStyle(
              color: Color(0xFF94A3B8),
              fontSize: 16,
              height: 1.7,
            ),
          ),
        ],
      ),
    ),

    const SizedBox(width: 40),

    Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Skills",
            style: TextStyle(
              color: Color(0xFF00F5A0),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              "Flutter",
              "Dart",
              "Firebase",
              "Provider",
              "REST API",
              "Git",
              "Figma",
              "Responsive UI",
              "Java"
            ].map((skill) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E293B),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  skill,
                  style: const TextStyle(
                    color: Color(0xFFCBD5E1),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    ),
  ],
),

const SizedBox(height: 30),
 Column(
   key: contactKey,
  crossAxisAlignment: CrossAxisAlignment.start,
   children:const [
      Text(
                "Contact",
                style: TextStyle(
                  color: Color(0xFF00F5A0),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
                 SizedBox(height: 20),
               
            Text(
                    "Let's build something together.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
            
            SizedBox(height: 15),
            ContactLink(
              title: 'Email',
              value: 'timalsinausha414@gmail.com',
              iconPath: 'assets/images/email.png',
              url: 'mailto:timalsinausha414@gmail.com',
            ),
            ContactLink(
              title: 'Phone',
              value: '9867678248',
              iconPath: 'assets/images/whatsapp.png',
              url: 'tel:+9779867678248',
            ),
            
            ContactLink(
              title: 'GitHub',
              value: 'github.com/timalsinausha',
              iconPath: 'assets/images/git.png',
              url: 'https://github.com/timalsinausha',
            ),
            
            ContactLink(
              title: 'LinkedIn',
              value: 'linkedin.com/in/usha-timalsina-004717286/',
              iconPath: 'assets/images/linkedin.png',
              url: 'https://www.linkedin.com/in/usha-timalsina-004717286/',
            ),
        ],
      ),
        
const SizedBox(height: 40),

Container(
  width: double.infinity,
  padding: const EdgeInsets.symmetric(vertical: 24),
  decoration: const BoxDecoration(
    border: Border(
      top: BorderSide(
        color: Color(0xFF1A1C23),
        width: 1,
      ),
    ),
  ),
  child: const Center(
    child: Text.rich(
      TextSpan(
        style: TextStyle(
        color: Colors.white,
          fontSize: 16,
        ),
        children: [
          TextSpan(text: '© 2026 '),
          TextSpan(
            text: 'Usha Timalsina',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: '. Built with '),
           TextSpan(
                          text: 'Flutter',
                          style: TextStyle(color: Color(0XFF0000FF)),
                        ),
                        TextSpan(text: ' &  '),
                        TextSpan(
                          text: 'Figma.',
                          style: TextStyle(color: Color(0xFF00D2FF)),
                        ),
        ],
      ),
      textAlign: TextAlign.center,
    ),
  ),
),
              const SizedBox(height: 50)
              ],
            )
          ),
        )
      
      ),
    );
  }
}