// ignore_for_file: prefer_const_constructors, unused_import, non_constant_identifier_names

import 'package:cargo/explore_page.dart';
import 'package:cargo/services/auth.dart';
import 'package:cargo/welcome_page.dart';
import 'package:cargo/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'model/MyUser.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  CarGoPhoneSystemActionBar();
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser?>.value(
        catchError: (_, __) {},
        value: AuthService().user,
        initialData: null,
        child: MaterialApp(
          // debugShowCheckedModeBanner: false,
          home: Wrapper(),
        ));
  }
}

void CarGoPhoneSystemActionBar() {
  return SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.light,
    statusBarColor: Colors.deepPurple,
  ));
}
