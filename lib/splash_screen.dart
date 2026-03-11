// ignore_for_file: unused_local_variable, unused_import

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:multi_roles_app/home_screen.dart';
import 'package:multi_roles_app/login_screen.dart';
import 'package:multi_roles_app/student_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    isLogin();

    Timer(Duration(seconds: 6), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    });
  }

  void isLogin() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool isLogin = sp.getBool('isLogin') ?? false;
    String userType = sp.getString('userType') ?? 'no type';
    

    if(isLogin){
      if(userType == 'student'){
         Timer(Duration(seconds: 5), () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> StudentScreen()));
      });

      }
      else{
         Timer(Duration(seconds: 5), () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
      });
      }
     
    }
    else{
      Timer(Duration(seconds: 5), () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
      });
    }
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
