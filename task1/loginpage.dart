
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_22_4/signup.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Text("Welcome Back",style: TextStyle(fontSize: 30),),
              ),
              Text("Enter Your credential to login"),
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: TextFormField(controller: emailController,
                  decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Enter Username',
                      labelText: "Username",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: isVisible,
                  decoration: InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: 'Enter Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: ()
                  {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>signup()));
                  },
                  child: Text("Login")
              ),
            ],
          ),
        ),
      ),
    );
  }
}
