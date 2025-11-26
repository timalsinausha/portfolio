// import 'package:flutter/material.dart';

// class Setting_Page extends StatefulWidget {
//   const Setting_Page({super.key});

//   @override
//   State<Setting_Page> createState() => _Setting_PageState();
// }

// class _Setting_PageState extends State<Setting_Page> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               /// First row
//               Row(
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text("First text", style: TextStyle(color: Colors.black)),
//                       Text("Second Text", style: TextStyle(color: Colors.black)),
//                     ],
//                   ),
//                   const Spacer(),
//                   Container(
//                     height: 90,
//                     width: 90,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.blueGrey, width: 2),
//                         borderRadius: BorderRadius.circular(2), 
//                     ),
//                     child: const CircleAvatar(
//                       backgroundColor: Color.fromARGB(255, 207, 205, 205),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.camera_alt_outlined),
//                           SizedBox(height: 4),
//                           Text("Text 3"),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 16),

//               /// Second container
//               Container(
//                 width: MediaQuery.sizeOf(context).width,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.red, width: 2),
//                 ),
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
                 
//                   children: [
//                      Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                              Text("0sdas", style: TextStyle(color: Colors.black)),
                        
//                              const Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 12,),
                    


//                           ],
//                         ),
//                         SizedBox(height: 5,),

//                    Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                        Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
                       
//                         Text("0", style: TextStyle(color: Colors.black)),
//                         Text("Fourth Text", style: TextStyle(color: Colors.black)),
//                       ],
//                     ),
//                     const Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 12,),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         Text("0", style: TextStyle(color: Colors.black)),
//                         Text("Fourth Text", style: TextStyle(color: Colors.black)),
//                       ],
//                     ),
//                     const Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 12,),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         Text("0", style: TextStyle(color: Colors.black)),
//                         Text("Fourth Text", style: TextStyle(color: Colors.black)),
//                       ],
//                     ),
//                     ],
//                    )
//                   ],
//                 ),
//               ),

//               SizedBox(height: 10,),
//                Container(
//                         height: 50,
                                        
//                                           decoration: BoxDecoration(
//                                               color: Colors.white,
//                                               border: Border(bottom: BorderSide(color: Colors.grey,width: 1)),
                                             
//                                             ),
//                       child: Row(
//                         children: [
//                           Padding(
//                               padding: const EdgeInsets.only(left: 22),
//                               child: Icon(
//                                 Icons.person_3_outlined,
//                                 size: 18,
//                                 color: Colors.black,
//                               )),
//                           SizedBox(
//                             width: 15,
//                           ),
//                           Text(
//                             "asjfjwnv",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w500, fontSize: 16,color: Colors.black),
//                           ),
//                           Spacer(),
//                           IconButton(
//                               onPressed: () {
                               
//                               },
//                               icon: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 12,))
//                         ],
//                       ),
//                     ),
//                      SizedBox(height: 10,),
//                Container(
//                         height: 50,
                                        
//                                           decoration: BoxDecoration(
//                                               color: Colors.white,
//                                               border: Border(bottom: BorderSide(color: Colors.grey,width: 1)),
                                             
//                                             ),
//                       child: Row(
//                         children: [
//                           Padding(
//                               padding: const EdgeInsets.only(left: 22),
//                               child: Icon(
//                                 Icons.message_sharp,
//                                 size: 18,
//                                 color: Colors.black,
//                               )),
//                           SizedBox(
//                             width: 15,
//                           ),
//                           Text(
//                             "asjfjwnv",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w500, fontSize: 16,color: Colors.black),
//                           ),
//                           Spacer(),
//                           IconButton(
//                               onPressed: () {
                               
//                               },
//                               icon: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 12,))
//                         ],
//                       ),
//                     ),
//                      SizedBox(height: 10,),
//                Container(
//                         height: 50,
                                        
//                                           decoration: BoxDecoration(
//                                               color: Colors.white,
//                                               border: Border(bottom: BorderSide(color: Colors.grey,width: 1)),
                                             
//                                             ),
//                       child: Row(
//                         children: [
//                           Padding(
//                               padding: const EdgeInsets.only(left: 22),
//                               child: Icon(
//                                 Icons.email_rounded,
//                                 size: 18,
//                                 color: Colors.black,
//                               )),
//                           SizedBox(
//                             width: 15,
//                           ),
//                           Text(
//                             "asjfjwnv",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w500, fontSize: 16,color: Colors.black),
//                           ),
//                           Spacer(),
//                           IconButton(
//                               onPressed: () {
                               
//                               },
//                               icon: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 12,))
//                         ],
//                       ),
//                     ),
//                      SizedBox(height: 10,),
//                Container(
//                         height: 50,
                                        
//                                           decoration: BoxDecoration(
//                                               color: Colors.white,
//                                               border: Border(bottom: BorderSide(color: Colors.grey,width: 1)),
                                             
//                                             ),
//                       child: Row(
//                         children: [
//                           Padding(
//                               padding: const EdgeInsets.only(left: 22),
//                               child: Icon(
//                                 Icons.mark_email_read,
//                                 size: 18,
//                                 color: Colors.black,
//                               )),
//                           SizedBox(
//                             width: 15,
//                           ),
//                           Text(
//                             "asjfjwnv",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w500, fontSize: 16,color: Colors.black),
//                           ),
//                           Spacer(),
//                           IconButton(
//                               onPressed: () {
                               
//                               },
//                               icon: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 12,))
//                         ],
//                       ),
//                     ),
//                      SizedBox(height: 10,),
//                Container(
//                         height: 50,
                                        
//                                           decoration: BoxDecoration(
//                                               color: Colors.white,
//                                               border: Border(bottom: BorderSide(color: Colors.grey,width: 1)),
                                             
//                                             ),
//                       child: Row(
//                         children: [
//                           Padding(
//                               padding: const EdgeInsets.only(left: 22),
//                               child: Icon(
//                                 Icons.checklist_rtl,
//                                 size: 18,
//                                 color: Colors.black,
//                               )),
//                           SizedBox(
//                             width: 15,
//                           ),
//                           Text(
//                             "asjfjwnv",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w500, fontSize: 16,color: Colors.black),
//                           ),
//                           Spacer(),
//                           IconButton(
//                               onPressed: () {
                               
//                               },
//                               icon: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 12,))
//                         ],
//                       ),
//                     ),

//                      SizedBox(height: 10,),
//                Container(
//                         height: 50,
                                        
//                                           decoration: BoxDecoration(
//                                               color: Colors.white,
//                                               border: Border(bottom: BorderSide(color: Colors.grey,width: 1)),
                                             
//                                             ),
//                       child: Row(
//                         children: [
//                           Padding(
//                               padding: const EdgeInsets.only(left: 22),
//                               child: Icon(
//                                 Icons.logout,
//                                 size: 18,
//                                 color: Colors.black,
//                               )),
//                           SizedBox(
//                             width: 15,
//                           ),
//                           Text(
//                             "asjfjwnv",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w500, fontSize: 16,color: Colors.black),
//                           ),
//                           Spacer(),
//                           IconButton(
//                               onPressed: () {
                               
//                               },
//                               icon: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 12,))
//                         ],
//                       ),
//                     ),
//                      SizedBox(height: 10,),
//                Container(
//                         height: 50,
                                        
//                                           decoration: BoxDecoration(
//                                               color: Colors.white,
//                                               border: Border(bottom: BorderSide(color: Colors.grey,width: 1)),
                                             
//                                             ),
//                       child: Row(
//                         children: [
//                           Padding(
//                               padding: const EdgeInsets.only(left: 22),
//                               child: Icon(
//                                 Icons.error_outline_sharp,
//                                 size: 18,
//                                 color: Colors.black,
//                               )),
//                           SizedBox(
//                             width: 15,
//                           ),
//                           Text(
//                             "asjfjwnv",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w500, fontSize: 16,color: Colors.black),
//                           ),
//                           Spacer(),
//                           IconButton(
//                               onPressed: () {
                               
//                               },
//                               icon: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 12,))
//                         ],
//                       ),
//                     ),

//                     SizedBox(height: 10,),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
