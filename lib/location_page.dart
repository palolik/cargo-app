// ignore_for_file: camel_case_types, library_private_types_in_public_api, non_constant_identifier_names, prefer_const_constructors_in_immutables, no_logic_in_create_state

import 'package:cargo/search_by_city_selection.dart';
import 'package:cargo/search_by_city_text.dart';
import 'package:cargo/model/location_model.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'reusable_widget/Custom_AppBar.dart';

class Cities extends StatefulWidget {
  final userCity = TextEditingController();

  void dispose() {
    userCity.dispose();
  }

  Cities({Key? key}) : super(key: key);

  @override
  _Cities createState() => _Cities(userCity);
}

class _Cities extends State<Cities> {
  final userCity = TextEditingController();

  _Cities(TextEditingController userCity);

  static List<String> cityName = [
    'Kuala Lumpur',
    'Alor Setar',
    'Kuching',
    'Ipoh',
    'Melacca',
    'Johor Bahru'
  ];

  static List url = [
    'https://cdn.britannica.com/49/102749-050-B4874C95/Kuala-Lumpur-Malaysia.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/c/cc/Menara_as.jpg',
    'https://lp-cms-production.imgix.net/2019-06/71f5f8232e28908fee31a8abd7766f33-top-things-to-do-in-kuching.jpg',
    'https://img.theculturetrip.com/wp-content/uploads/2021/03/2a7966x-e1617787498867.jpg',
    'https://www.trailsofindochina.com/wp-content/uploads/2019/07/Malacca-header.jpg',
    'https://cdn.enjoytravel.com/img/travel-news/johor-bahru-is-the-southernmost-city-in-malaysia.jpg'
  ];

  final List<Location> location = List.generate(
      cityName.length, (index) => Location(cityName[index], '${url[index]}'));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CarGoAppBar(),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          controller: userCity,
                          decoration: InputDecoration(
                              suffixIcon: Align(
                                widthFactor: 1.0,
                                heightFactor: 1.0,
                                child: IconButton(
                                  icon: Icon(Icons.search_rounded),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SearchByCityText(
                                                  userCity: Text(userCity.text),
                                                )));
                                  },
                                ),
                              ),
                              border: InputBorder.none,
                              hintText: "Try Johor Bahru",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                      itemCount: cityName.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(location[index].name),
                            trailing:
                                const Icon(Icons.arrow_forward_ios_rounded),
                            leading: SizedBox(
                              width: 50,
                              height: 50,
                              child: Image.network(location[index].image,
                                  fit: BoxFit.cover, height: 50, width: 50),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SearchByCitySelection(
                                        locationObject: location[index],
                                      )));
                            },
                          ),
                        );
                      }),
                )
              ],
            )));
  }
}
