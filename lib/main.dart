// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:multi_roles_app/home_screen.dart';
import 'package:multi_roles_app/splash_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      home: SplashScreen(),
    );
  }
}