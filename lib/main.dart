import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:student/firebase_options.dart';
import 'package:student/login.dart';
import 'package:student/profile.dart';
import 'package:student/registration.dart';
import 'package:student/splash.dart';
void main()async
{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(home: Reg())

  );
}