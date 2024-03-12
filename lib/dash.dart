// import 'package:cargo/contactus.dart';
// import 'package:cargo/payment.dart';
// import 'package:cargo/settings.dart';
// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// class Dashboard extends StatefulWidget {
//   const Dashboard({Key? key}) : super(key: key);

//   @override
//   State<Dashboard> createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   String dropdownValue = 'One';

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
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GridView.count(
//             crossAxisCount: 3,
//             crossAxisSpacing: 5.0,
//             mainAxisSpacing: 8.0,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: GestureDetector(
//                   onTap: () {
//                     // Get.to(const Reword());
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Flexible(
//                         child: Image.asset(
//                           "assets/faq.jpg",
//                           width: 70,
//                           height: 70,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 5,
//                       ),
//                       const Text("FAQ"),
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const PaymendAdd()));
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Flexible(
//                         child: Image.asset(
//                           "assets/payment.jpg",
//                           width: 70,
//                           height: 70,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 5,
//                       ),
//                       const Text("Payments"),
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const Settings()));
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Image.asset(
//                         "assets/settings.png",
//                         width: 70,
//                         height: 70,
//                       ),
//                       const SizedBox(
//                         height: 5,
//                       ),
//                       const Text("Settings"),
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const AppBarApp()));
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Flexible(
//                         child: Image.asset(
//                           "assets/contact us.png",
//                           width: 70,
//                           height: 70,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 5,
//                       ),
//                       const Text("Contact Us"),
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: GestureDetector(
//                   onTap: () {
//                     // Navigator.push(
//                     //     context,
//                     //     MaterialPageRoute(
//                     //         builder: (context) => const ContactUs()));
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Image.asset(
//                         "assets/profile.png",
//                         width: 70,
//                         height: 70,
//                       ),
//                       const SizedBox(
//                         height: 5,
//                       ),
//                       const Text("Profile")
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: GestureDetector(
//                   onTap: () {
//                     // Navigator.push(
//                     //     context,
//                     //     MaterialPageRoute(
//                     //         builder: (context) => const TaskSub()));
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Image.asset(
//                         "assets/signout button.png",
//                         width: 70,
//                         height: 70,
//                       ),
//                       const SizedBox(
//                         height: 5,
//                       ),
//                       const Text("Sign Out")
//                     ],
//                   ),
//                 ),
//               ),
//             ]),
//       ),
//       bottomNavigationBar: CarGoCurvedNavigationBar(),
//     );
//   }
// }

// CurvedNavigationBar CarGoCurvedNavigationBar() {
//   return CurvedNavigationBar(
//     index: 0,
//     backgroundColor: Color.fromARGB(255, 255, 255, 255),
//     color: Colors.deepPurple,
//     animationDuration: Duration(milliseconds: 200),
//     onTap: (int index) {
//       switch (index) {
//         case 0:
//           // Navigator.push(
//           //   context,
//           //   MaterialPageRoute(builder: (context) => ExplorePage()),
//           // );
//           break;
//         case 1:
//           // Navigator.push(
//           //   context,
//           //   MaterialPageRoute(builder: (context) => RentPage()),
//           // );
//           break;
//         case 2:
//           // Navigator.push(
//           //   context,
//           //   MaterialPageRoute(builder: (context) => Hostpage()),
//           // );
//           break;
//       }
//     },
//     items: const [
//       Icon(Icons.explore, color: Colors.white),
//       Icon(Icons.directions_car_sharp, color: Colors.white),
//       Icon(Icons.car_rental, color: Colors.white),
//       Icon(Icons.settings, color: Colors.white),
//     ],
//   );
// }
