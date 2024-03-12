import 'package:cargo/authenticate/authenticate.dart';
import 'package:cargo/register_page.dart';
import 'package:cargo/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'explore_page.dart';
import 'model/MyUser.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser?>(context);

    if (user == null) {
      Navigator.of(context).pushReplacement;
      return Authenticate();
    } else {
      Navigator.of(context).pushReplacement;

      return ExplorePage();
    }
  }
}
