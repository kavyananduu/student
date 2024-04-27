import 'package:flutter/material.dart';
class Pro extends StatelessWidget {
   Pro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'PROFILE',
        ),
      ),
    );
  }
}
