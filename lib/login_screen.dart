// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:multi_roles_app/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                salman();
                // print('clicked');
                Navigator.push(context,
                 MaterialPageRoute(builder: (context)=> HomeScreen()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: const Center(
                  child: Text(
                    'Click here',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
Future<void> salman() async{
  await Future.delayed(Duration(seconds: 5), () {
    print('hello');
  });
}
