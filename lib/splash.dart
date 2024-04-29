import 'dart:async';
import 'package:flutter/material.dart';
import 'package:student/login.dart';
class Splash extends StatefulWidget {
  Splash({super.key});

  @override
  State<Splash> createState() => _SplState();
}
class _SplState extends State<Splash>{
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) =>
          Login()));
    });
    }
        Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
        child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 90,
        backgroundImage: NetworkImage('https://53.fs1.hubspotusercontent-na1.net/hub/53/hubfs/image8-2.jpg?width=893&height=600&name=image8-2.jpg'),

    ),
    ),
            SizedBox(height: 20,),
            Text(
              'GOOGLE',
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
              ),
            ),

          ],

        ),

    );
  }
}
