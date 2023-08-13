import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/screens/profile_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Papa Kofi',
      theme: ThemeData(
        // brightness: Brightness.dark,
        // primaryColor: Colors.black,
        fontFamily: "OpenSansRegular",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}
