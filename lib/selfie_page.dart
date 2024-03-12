import 'package:cargo/verify_identity.dart';
import 'package:flutter/material.dart';

import 'explore_page.dart';

class SelfiePage extends StatefulWidget {
  const SelfiePage({Key? key}) : super(key: key);

  @override
  State<SelfiePage> createState() => _SelfiePageState();
}

class _SelfiePageState extends State<SelfiePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              // child: Center(
                // child: ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //       minimumSize: Size(200, 50),
                //       textStyle: TextStyle(fontSize: 21),
                //       backgroundColor: Colors.white,
                //       foregroundColor: Colors.white,
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(30.0)),
                //     ),
                    
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                     Material(
                  color: Colors.deepPurple,
                  elevation: 8,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                    bottomRight: Radius.circular(28),
                    bottomLeft: Radius.circular(28),
                  ),
                  child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () {},
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Ink.image(
                          image: AssetImage("assets/selfie.png"),
                          height: 150,
                          width: 300,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text('Take a selfie',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ))
                      ]))),


                      SizedBox(height: 10,),


                      Material(
                  color: Colors.deepPurple,
                  elevation: 8,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                    bottomRight: Radius.circular(28),
                    bottomLeft: Radius.circular(28),
                  ),
                  child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () {},
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Ink.image(
                          image: AssetImage("assets/rav4.jpg"),
                          height: 150,
                          width: 300,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text('Upload the photo',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ))
                      ]))),
          ]),
                  // onPressed: () {},




                ),
              
            
              Expanded(
              child: Center(
                
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 50),
                      textStyle: TextStyle(fontSize: 21),
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                  child: const Text('Upload a photo'),
                  onPressed: () {},
                ),

          
              ),
            ),
          ],
        ),
      ),
    );
  }
}
