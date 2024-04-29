import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:student/profile.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();

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
      controller: EmailController,


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
              controller: PasswordController,

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
            onPressed: () //{Navigator.push(context,MaterialPageRoute(builder:(context)=>Pro(),));},
            async {
              try{
                await  FirebaseAuth.instance.signInWithEmailAndPassword(email: EmailController.text, password: PasswordController.text);
                Navigator.push(context,MaterialPageRoute(builder:(context)=>Pro(),));


              }
              on FirebaseAuthException  catch(e){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.code)));
              }},

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
