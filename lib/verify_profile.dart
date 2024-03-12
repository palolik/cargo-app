import 'package:cargo/verify_identity.dart';
import 'package:flutter/material.dart';

import 'explore_page.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({Key? key}) : super(key: key);

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'assets/profile.png',
              width: 270,
              height: 200,
            ),
            Text(
              'Complete Your Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 120),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 50),
                      textStyle: TextStyle(fontSize: 21),
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    child: Text('VERIFY PROFILE'),
                    onPressed: () {
                     Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyID()),
                        );
                    },
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
