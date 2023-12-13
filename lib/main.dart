import 'package:donation_blood/add.dart';
import 'package:donation_blood/homePage.dart';
import 'package:donation_blood/update.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Blood Donation App",
      routes: {
        'homePage': (context) => HomePage(),
        'addUser': (context) => AddUser(),
        'updateDonor': (context) => UpdateDonor(),
      },
      initialRoute: 'homePage',
    );
  }
}
