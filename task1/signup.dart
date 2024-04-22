  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';

  import 'loginpage.dart';

  class signup extends StatefulWidget
  {
    const signup({super.key});

    @override
    State<signup> createState() => _signupState();
  }

  class _signupState extends State<signup> {

    bool _cricket = false;
    bool _chess = false;

    String _selectgender = "";

    TextEditingController passwordController = TextEditingController();
    TextEditingController passwordconfirmController = TextEditingController();

    bool isVisible = true;


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SingleChildScrollView(
              child: Center(
                  child: Column(
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text('Sign Up',style: TextStyle(fontSize: 20),),
                  ),
                  Text("Create Your Account",style: TextStyle(fontSize: 16),),


                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(

                      decoration: InputDecoration
                        (
                          hintText: 'Enter First Name',
                          labelText: "First Name",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(

                      decoration: InputDecoration
                        (
                        hintText: 'Enter Last Name',
                        labelText: "Last Name",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(
                      decoration: InputDecoration
                        (
                        hintText: 'Enter Email',
                        labelText: "Email",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),

                    ),
                  ),

                    Text("Hobbies",style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  CheckboxListTile
                      (
                      value: _cricket,
                      onChanged: (value)
                      {
                        setState(() {
                          _cricket = value ?? false;
                        });
                      },title: Text("Cricket"),
                    ),
                  CheckboxListTile
                      (
                      value: _chess,
                      onChanged: (value)
                      {
                        setState(() {
                          _chess = value ?? false;
                        });
                      },title: Text("Chess"),
                    ),

                  Text("Gender",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  RadioListTile
                    (
                    value: "Male",
                    groupValue: _selectgender,
                    onChanged: (value)
                    {
                      setState(() {
                        _selectgender = value as String ;
                      });
                    },title: Text("Male"),
                  ),
                  RadioListTile
                    (
                    value: "Female",
                    groupValue: _selectgender,
                    onChanged: (value)
                    {
                      setState(() {
                        _selectgender = value as String ;
                      });
                    },title: Text("Female"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: isVisible,
                      decoration: InputDecoration(
                        icon: Icon(Icons.password),
                        hintText: 'Enter Password',
                        labelText: 'password',
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
                    padding: const EdgeInsets.all(4),
                    child: TextFormField(
                      controller: passwordconfirmController,
                      obscureText: isVisible,
                      decoration: InputDecoration(
                        icon: Icon(Icons.password),
                        hintText: 'Enter  Confirm Password',
                        labelText: 'Confirm password',
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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginpage()),);

                      },
                      child: Text("Sign Up"))
                  ],

                  )
                  ),
            )
      );
    }
  }
