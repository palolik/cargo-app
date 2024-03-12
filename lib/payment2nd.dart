// import 'package:cargo/CongoPage.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class Payment2nd extends StatefulWidget {
//   const Payment2nd({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<Payment2nd> createState() => _Payment2ndState();
// }

// class _Payment2ndState extends State<Payment2nd> {
//   final _subjectController = TextEditingController();
//   final _daysController = TextEditingController();

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _subjectController.dispose();
//     _daysController.dispose();

//     super.dispose();
//   }

//   Future storeReq() async {
//     // adduserDetails(
//     //   _subjectController.text.trim(),
//     //   _daysController.text.trim(),
//     // );
//     Navigator.push(
//         context, MaterialPageRoute(builder: (context) => CongoPage()));
//   }

//   // Future adduserDetails(
//   //   String subject,
//   //   String days,
//   // ) async {
//   //   await FirebaseFirestore.instance.collection('carddetails').add({
//   //     'subject': subject,
//   //     'days': days,
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 255, 255, 255),
//         shadowColor: Color.fromARGB(255, 255, 255, 255),
//         centerTitle: true,
//         title: Padding(
//           padding: const EdgeInsets.only(top: 10),
//           child: Image.asset(
//             'assets/CarGo2.png',
//             color: Colors.black,
//             height: 120.0,
//             width: 85.0,
//           ),
//         ),
//       ),
//       backgroundColor: Color.fromARGB(255, 255, 255, 255),
//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
// // hello world

//                 SizedBox(height: 10),
//                 Text(
//                   'Add Credit/Debit Card',
//                   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 20),
// //first name fieldtext

//                 SizedBox(height: 20),
// // email textfield
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 238, 238, 238),
//                       border: Border.all(color: Colors.white),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 20.0),
//                       child: TextField(
//                         controller: _subjectController,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: 'Card Number',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
// // email textfield
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 238, 238, 238),
//                       border: Border.all(color: Colors.white),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 20.0),
//                       child: TextField(
//                         controller: _daysController,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: 'MM/YY/CVC',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
// // email textfield
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: GestureDetector(
//                     onTap: storeReq,
//                     child: Container(
//                       padding: EdgeInsets.all(20),
//                       decoration: BoxDecoration(
//                         color: Color.fromARGB(255, 255, 225, 0),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Center(
//                         child: Text(
//                           'ADD CARD',
//                           style: TextStyle(
//                             color: Color.fromARGB(255, 0, 0, 0),
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
// // not a member sign up button
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
