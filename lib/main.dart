import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:t_store/app.dart';
import 'package:t_store/firebase_options.dart';

Future<void> main() async {
  //add widgets binding
  //init local storage
  //await native splash
  //initialize firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //initialize authentication
  runApp(const App());
}
