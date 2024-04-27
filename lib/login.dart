import 'package:flutter/material.dart';
import 'package:student/profile.dart';

class Login extends StatelessWidget {
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Text(
          'LOGIN',
        ),
      ),
        body: Center(
        child: Column(
        children: [

        SizedBox(height: 100,),
    Padding(
    padding: EdgeInsets.symmetric(horizontal: 200),
    child: TextField(

    decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
    hintText: ('UserName'),
        border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
    Radius.circular(5),
    ))),
    ),
    ),
    SizedBox(
    width: 100,
    ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 200),
            child: TextField(

              decoration: InputDecoration(

                  prefixIcon: Icon(Icons.account_circle),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ))),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {Navigator.push(context,MaterialPageRoute(builder:(context)=>Pro(),));},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent),
            child: Text('LOGIN',
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
