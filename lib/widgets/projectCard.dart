// import 'package:flutter/material.dart';
// import '../models/projects_model.dart';

// class ProjectCard extends StatelessWidget {
//   final ProjectModel project;

//   const ProjectCard({super.key, required this.project});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.all(16),
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(project.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 8),
//             Text(project.description),
//             const SizedBox(height: 8),
//             Text("Tools: ${project.tools.join(', ')}"),
//             const SizedBox(height: 8),
//             TextButton(
//               onPressed: () {
//                 // Can add url_launcher here
//               },
//               child: const Text("View on GitHub"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
