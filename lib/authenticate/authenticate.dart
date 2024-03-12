import 'package:cargo/welcome_page.dart';
import 'package:flutter/material.dart';

import '../login_page.dart';
import '../register_page.dart';
import 'package:cargo/services/auth.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return WelcomePage(toggleView: toggleView);
    } else {
      return LoginPage(toggleView: toggleView);
    }
  }
}
