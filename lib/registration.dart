import 'package:flutter/material.dart';
import 'package:student/login.dart';
class Reg extends StatelessWidget {
  Reg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'STUDENT REGISTRATION FORM',
        ),
      ),
      body: Center(
        child: Column(
          children: [

            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: TextField(

                decoration: InputDecoration(
                  filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.account_circle),
                    hintText: 'UserName',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: TextField(

                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.account_circle),
                    hintText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: TextField(

                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.account_circle),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: TextField(

                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.account_circle),
                    hintText: 'Confirm Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ))),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {Navigator.push(context,MaterialPageRoute(builder:(context)=>Login(),));},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent),
              child: Text('REGISTER',
                style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}