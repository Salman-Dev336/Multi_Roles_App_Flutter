import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text('welcome to home screen',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
          
                ),
              ),
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: () async {
          
                  SharedPreferences sp = await SharedPreferences.getInstance();
                
          
          
                  // sp.setString('name', 'salman');
                  // sp.setInt('age', 25);
                  // // print(sp.getString( 'name'));
                  // // print(sp.getInt('age').toString());  
                  // sp.remove('name');
                  // print(sp.getString( 'name'));
                  // sp.remove('age');
                  // print(sp.getInt('age').toString());
                  // // salman();
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
                      'LogOut',
                      style: TextStyle(color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
                //text
                
            ],
          ),
        ),
      ),
    );
  }
}