import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:student/login.dart';
class Reg extends StatelessWidget {
  Reg({super.key});
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();

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
                controller: EmailController,

                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.mail_outline),
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
                controller: PasswordController,

                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.lock),
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

                    prefixIcon: Icon(Icons.lock),
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
              onPressed: () //{Navigator.push(context,MaterialPageRoute(builder:(context)=>Login(),));},
              async {
                try{
                  await  FirebaseAuth.instance.createUserWithEmailAndPassword(email: EmailController.text, password: PasswordController.text);
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Login(),));


                }
                on FirebaseAuthException  catch(e){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.code)));
                }},



              style: ElevatedButton.styleFrom(
          backgroundColor: Colors.
      pinkAccent),
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