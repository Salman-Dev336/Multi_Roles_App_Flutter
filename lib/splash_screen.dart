import 'dart:async';
import 'package:flutter/material.dart';
import 'package:multi_roles_app/home_screen.dart';
import 'package:multi_roles_app/login_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    });
  }

    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        height: double.infinity,
        image: NetworkImage('https://images.pexels.com/photos/327158/pexels-photo-327158.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
      fit: BoxFit.fitHeight,),
    );
  }
}
