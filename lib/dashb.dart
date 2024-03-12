// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:logsign/pages/home_page_ts.dart';
// import 'package:logsign/pages/student/usermain.dart';

// class RequestTutorInStudent extends StatefulWidget {
//   const RequestTutorInStudent({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<RequestTutorInStudent> createState() => _RequestTutorInStudentState();
// }

// class _RequestTutorInStudentState extends State<RequestTutorInStudent> {
//   final _subjectController = TextEditingController();
//   final _daysController = TextEditingController();
//   final _salaryController = TextEditingController();
//   final _emailController = TextEditingController();
//   final _nameController = TextEditingController();
//   final _genderController = TextEditingController();
//   final _phoneNumberController = TextEditingController();
//   final _ageController = TextEditingController();
//   final _classController = TextEditingController();
//   final _cityController = TextEditingController();
//   final _detailsAddressController = TextEditingController();
//   final _religionController = TextEditingController();

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _subjectController.dispose();
//     _daysController.dispose();
//     _salaryController.dispose();
//     _emailController.dispose();
//     _nameController.dispose();
//     _genderController.dispose();
//     _phoneNumberController.dispose();
//     _ageController.dispose();
//     _classController.dispose();
//     _cityController.dispose();
//     _detailsAddressController.dispose();
//     _religionController.dispose();

//     super.dispose();
//   }

//   Future storeReq() async {
//     adduserDetails(
//       _subjectController.text.trim(),
//       _daysController.text.trim(),
//       _salaryController.text.trim(),
//       _emailController.text.trim(),
//       _nameController.text.trim(),
//       _genderController.text.trim(),
//       int.parse(_phoneNumberController.text.trim()),
//       _ageController.text.trim(),
//       _classController.text.trim(),
//       _cityController.text.trim(),
//       _detailsAddressController.text.trim(),
//     );
//     Navigator.push(
//         context, MaterialPageRoute(builder: (context) => Congopage()));
//   }

//   Future adduserDetails(
//       String subject,
//       String days,
//       String salary,
//       String email,
//       String name,
//       String gender,
//       int phoneNumber,
//       String age,
//       String clas,
//       String city,
//       String address) async {
//     await FirebaseFirestore.instance.collection('studentsteacherreq').add({
//       'subject': subject,
//       'days': days,
//       'salary': salary,
//       'email': email,
//       'name': name,
//       'gender': gender,
//       'phone_number': phoneNumber,
//       'age': age,
//       'class': clas,
//       'city': city,
//       'address': address,
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
// // hello world
//                 Image.asset(
//                   "assets/images/tutora.png",
//                   width: 300,
//                   height: 300,
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'Request for a tutor ',
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
//                       color: Colors.grey[200],
//                       border: Border.all(color: Colors.white),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 20.0),
//                       child: TextField(
//                         controller: _subjectController,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: 'Subject (in which you want a tutor)',
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
//                       color: Colors.grey[200],
//                       border: Border.all(color: Colors.white),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 20.0),
//                       child: TextField(
//                         controller: _emailController,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: 'Email',
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
//                         color: Colors.red,
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Center(
//                         child: Text(
//                           'Request',
//                           style: TextStyle(
//                             color: Colors.white,
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
