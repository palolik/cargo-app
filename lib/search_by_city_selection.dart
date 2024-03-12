// ignore_for_file: camel_case_types, library_private_types_in_public_api, non_constant_identifier_names, prefer_const_constructors_in_immutables, no_logic_in_create_state, must_be_immutable

import 'package:cargo/car_tile.dart';
import 'package:cargo/explore_page.dart';
import 'package:cargo/model/location_model.dart';
import 'package:flutter/material.dart';

import 'reusable_widget/Custom_AppBar.dart';

class SearchByCitySelection extends StatefulWidget {
  final Location locationObject;
  SearchByCitySelection({
    super.key,
    required this.locationObject,
  });

  @override
  _SearchByCitySelection createState() =>
      _SearchByCitySelection(locationObject);
}

class _SearchByCitySelection extends State<SearchByCitySelection> {
  final Location locationObject;
  _SearchByCitySelection(this.locationObject);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CarGoAppBar(),
            body: SingleChildScrollView(
              child: Column(children: [
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(TextSpan(
                        text: 'Cars Located in ',
                        style: TextStyle(fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                              text: locationObject.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ))
                        ])),
                  ],
                ),
                // CarTile(car: car1),
                // CarTile(car: car2),
                SizedBox(height: 20),
              ]),
            )));
  }
}
