// ignore_for_file: unused_import

// ignore_for_file: prefer_const_constructors

import 'package:cargo/add_car_details.dart';
import 'package:cargo/login_page.dart';
import 'package:cargo/register_page.dart';
import 'package:cargo/settings.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'rent_page.dart';
import 'explore_page.dart';
import 'reusable_widget/Custom_AppBar.dart';

// ignore: use_key_in_widget_constructors
class Hostpage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _Hostpage createState() => _Hostpage();
}

class _Hostpage extends State<Hostpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CarGoAppBar(),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Text("Total Earnings: 520 RM",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              SizedBox(height: 30),
              Image.asset(
                'assets/rav4.jpg',
                width: 350,
                height: 200,
              ),
              SizedBox(height: 15),
              Text("Toyata Rav4 2022",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(200, 50),
                          textStyle: TextStyle(fontSize: 25),
                          backgroundColor: Colors.deepPurple,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                        ),
                        child: Text('Add a New Car'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddVehicle()),
                          );
                        }),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CarGoCurvedNavigationBar(),
    );
  }

  // ignore: non_constant_identifier_names
  CurvedNavigationBar CarGoCurvedNavigationBar() {
    return CurvedNavigationBar(
      index: 2,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      color: Colors.deepPurple,
      animationDuration: Duration(milliseconds: 200),
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ExplorePage()),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RentPage()),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Hostpage()),
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Settings1()),
            );
            break;
        }
      },
      items: const [
        Icon(Icons.explore, color: Colors.white),
        Icon(Icons.directions_car_sharp, color: Colors.white),
        Icon(Icons.car_rental, color: Colors.white),
        Icon(Icons.settings, color: Colors.white),
      ],
    );
  }
}
