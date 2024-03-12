import 'package:cargo/services/auth.dart';
import 'package:cargo/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class DeletePage extends StatelessWidget {
  final AuthService _auth = AuthService();
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.grey,
    padding: EdgeInsets.all(0),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('SIGNOUT'),
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
        actions: [
          TextButton.icon(
            icon: Icon(Icons.person),
            label: Text('SignOut'),
            onPressed: () async {
              await _auth.signOut();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
