import 'package:flutter/material.dart';
import 'package:multi_roles_app/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  String email = '';
 String type = '';

  @override
  void initState(){
    super.initState();
    // getData();
    loadData();
  }
  Future<void> loadData() async {
    SharedPreferences sp =  await SharedPreferences.getInstance();
    email = sp.getString('email')?? 'no email';
    type = sp.getString('userType')?? 'no type';
    setState(() {
      
    });
    // String email = sp.getString('email') ?? 'no email';
    // print(email);
  }
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
                child: Text('welcome to Student screen',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
          
                ),
              ),
              ),
              Column(
                children: [
                  Text('User Type: ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                   Text(type.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Email: ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      
                      Text(email.toString(),
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                     
                  
                      
                      
                    ],
                  
                  ),
                ],
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: () async {
          
                  SharedPreferences sp = await SharedPreferences.getInstance();
                  sp.clear();
                
          
          
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
                   MaterialPageRoute(builder: (context)=> LoginScreen()));
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