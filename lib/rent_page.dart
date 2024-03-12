// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cargo/history_page.dart';
import 'package:cargo/landing_page.dart';
import 'package:cargo/host_page.dart';
import 'package:cargo/explore_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'booked_page.dart';
import 'location_page.dart';

class RentPage extends StatefulWidget {
  const RentPage({Key? key}) : super(key: key);

  @override
  State<RentPage> createState() => _RentPageState();
}

class _RentPageState extends State<RentPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // TabController tabController = TabController(length: 3, vsync: this);
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: CarGoAppBar(),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Center(
              child: Column(children: [
                TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.deepPurple,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                    color: Colors.deepPurple,
                  ),
                  tabs: [
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Rent"),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Booked"),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("History"),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(children: [
                    Container(
                        child: Center(
                      child: SearchElevatedButton(),
                    )),
                    BookedPage(),
                    HistoryPage(),
                  ]),
                )
              ]),
            ),
          ),
          bottomNavigationBar: CarGoCurvedNavigationBar(),
        ));
  }

  ElevatedButton SearchElevatedButton() {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Cities()),
        );
      },
      icon: Text("Search for a Location"),
      label: Icon(
        Icons.search,
        color: Colors.black,
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(300, 40),
        textStyle: TextStyle(
          fontSize: 15,
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(color: Colors.black)),
      ),
    );
  }

  CurvedNavigationBar CarGoCurvedNavigationBar() {
    return CurvedNavigationBar(
      index: 1,
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
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Hostpage()),
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ExplorePage()),
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

  // ignore: non_constant_identifier_names
  AppBar CarGoAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      // iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 7),
        child: Image.asset(
          'assets/CarGo2.png',
          color: Colors.black,
          height: 120.0,
          width: 90.0,
        ),
      ),
    );
  }
}
