// ignore_for_file: camel_case_types, library_private_types_in_public_api, non_constant_identifier_names, prefer_const_constructors_in_immutables, no_logic_in_create_state, must_be_immutable

import 'package:cargo/explore_page.dart';
import 'package:flutter/material.dart';
import 'reusable_widget/Custom_AppBar.dart';

class SearchByCityText extends StatefulWidget {
  Text userCity;
  SearchByCityText({
    super.key,
    required this.userCity,
  });

  @override
  _SearchByCityText createState() => _SearchByCityText(userCity);
}

class _SearchByCityText extends State<SearchByCityText> {
  Text userCity;
  _SearchByCityText(this.userCity);

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
                              text: '${widget.userCity.data}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ))
                        ])),
                  ],
                ),
                // CarCardSample(car: car1),
                // CarCardSample(car: car2),
                SizedBox(height: 20),
              ]),
            )));
  }
}
