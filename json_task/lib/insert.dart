import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Insert extends StatefulWidget {
  const Insert({super.key});

  @override
  State<Insert> createState() => _InsertState();
}

class _InsertState extends State<Insert> {

TextEditingController name = TextEditingController();
TextEditingController surname = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Insert Data"),),
      body: Center(
        child: Column(
            children: [
              TextFormField(controller: name,decoration: InputDecoration(hintText: "Enter Name"),),
              SizedBox(height: 10,),
              TextFormField(controller: surname,decoration: InputDecoration(hintText: "Enter Surname"),),
              SizedBox(height: 10,),
              TextFormField(controller: email,decoration: InputDecoration(hintText: "Enter Email"),),
              SizedBox(height: 10,),
              TextFormField(controller: password,decoration: InputDecoration(hintText: "Enter Password"),),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: ()
                  {
                      _datainsert();
                  },
                  child: Text("Insert"))

            ],
        ),
      ),
    );
  }

  void _datainsert()
  {
    var url = Uri.parse("https://unweeded-bracing.000webhostapp.com/API/insert.php");
    http.post(url,
    body:
        {
            "name":name.text.toString(),
            "surname":surname.text.toString(),
            "email":email.text.toString(),
            "password":password.text.toString(),

        });
    print("Inserted");
    }
}
