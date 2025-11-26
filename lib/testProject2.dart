// import 'package:flutter/material.dart';

// class Another_Page extends StatefulWidget {
//   const Another_Page({super.key});

//   @override
//   State<Another_Page> createState() => _Another_PageState();
// }

// class _Another_PageState extends State<Another_Page> {
//   int _currentIndex = 0;
// final labels = ["Overview", "Details", "Settings"];
//  final List<ListViewData> dataList = [
//     ListViewData(
//       image: "https://picsum.photos/200",
//       name: "Hotel Sunshine",
//       description: "A luxurious hotel with great amenities.",
//       services: ["F&B", "Spa", "Gym"],
//     ),
//     ListViewData(
//       image: "https://picsum.photos/201",
//       name: "Mountain View Resort",
//       description: "Perfect place for relaxation and mountain views.",
//       services: ["F&B", "Hiking", "Swimming Pool"],
//     ),
//     ListViewData(
//       image: "https://www.tourradar.com/days-to-come/wp-content/uploads/2019/04/Quotes8.jpg",
//       name: "City Inn",
//       description: "Affordable stay in the heart of the city.",
//       services: ["F&B", "Wi-Fi", "Parking"],
//     ),
//      ListViewData(
//       image: "https://www.shutterstock.com/image-photo/fried-salmon-steak-cooked-green-600nw-2489026949.jpg",
//       name: "City Inn",
//       description: "Affordable stay in the heart of the city.",
//       services: ["F&B", "Wi-Fi", "Parking"],
//     ),
//       ListViewData(
//       image: "https://www.shutterstock.com/image-photo/fried-salmon-steak-cooked-green-600nw-2489026949.jpg",
//       name: "City Inn",
//       description: "Affordable stay in the heart of the city.",
//       services: ["F&B", "Wi-Fi", "Parking"],
//     ),
//   ];


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
//       ),
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               "First text",
//               style: TextStyle(color: Colors.black, fontSize: 18),
//             ),
//             const SizedBox(height: 16),

//             // Custom toggle using Containers
//            Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: List.generate(3, (index) {
//     bool isSelected = _currentIndex == index;


//     return Expanded(
//       child: GestureDetector(
//         onTap: () {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         child: Container(
//           height: 45,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             border: Border(
//               bottom: BorderSide(
//                 color: isSelected ? Colors.purple : Colors.grey,
//                 width: 2,
//               ),
//             ),
//           ),
//           alignment: Alignment.center,
//           child: Text(
//             labels[index], // use custom label here
//             style: TextStyle(
//               color: Colors.black,
//               fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
//             ),
//           ),
//         ),
//       ),
//     );
//   }),
// ),

//             const SizedBox(height: 24),

//             // Content area
//             Expanded(
//               child: IndexedStack(
//                 index: _currentIndex,
//                 children:  [
//                  Column(
//       children: [
//         Expanded(
//           child: ListView.builder(
//         itemCount: dataList.length,
//         itemBuilder: (context, index) {
//           final item = dataList[index];
//           return SingleChildScrollView(
//             child: Container(
//               margin: const EdgeInsets.all(8),
//               padding: const EdgeInsets.all(12),
//               color:Colors.white,
//               // decoration: BoxDecoration(
//               //   color: const Color.fromARGB(255, 222, 221, 223),
//               //  // borderRadius: BorderRadius.circular(12),
//               // ),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Image on left
//                   SizedBox(
//                     height: 85,
//                     width: 85,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(8),
//                       child: Image.network(
//                         item.image,
//                         width: 80,
//                         height: 80,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 12),
            
//                   // Texts on right
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           item.name,
//                           style: const TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black
//                           ),
//                         ),
//                         const SizedBox(height: 4),
//                         Text(
//                           item.description,
//                           style: const TextStyle(fontSize: 14, color: Colors.black),
//                         ),
//                         const SizedBox(height: 8),
            
//                         // Services
//                         Wrap(
//                           spacing: 6,
//                           children: item.services
//                               .map((service) => Chip(
//                                     label: Text(service),
//                                     backgroundColor: Colors.purple.shade100,
//                                   ))
//                               .toList(),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//         ),
//       ],
//     ),
//                 //   Container(
//                 //     color: Colors.green.shade50,
//                 //     //child: const Center(
//                 //     //   child: Text("This is the Details page",
//                 //     //       style: TextStyle(fontSize: 20)),
//                 //     // ),
//                 //   ),

//                 //  Container(
//                 //     color: Colors.orange.shade50,
//                 //     // child: const Center(
//                 //     //   child: Text("This is the Settings page",
//                 //     //       style: TextStyle(fontSize: 20)),
//                 //     // ),
//                 //     )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// class ListViewData {
//   final String image;      
//   final String name;        
//   final String description; 
//   final List<String> services;

//   ListViewData({
//     required this.image,
//     required this.name,
//     required this.description,
//     required this.services,
//   });
// }
