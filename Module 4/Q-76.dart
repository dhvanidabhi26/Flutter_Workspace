import 'package:flutter/material.dart';

class SumPage extends StatefulWidget {
  const SumPage({super.key});

  @override
  State<SumPage> createState() => _SumPageState();
}

class _SumPageState extends State<SumPage> {

  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();

  double _sum = 0;

  void _result()
  {
    setState(() {
      double number1 = double.tryParse(num1.text) ?? 0;
      double number2 = double.tryParse(num2.text) ?? 0;
      _sum = number1 + number2;
    });

    Navigator.push(context, MaterialPageRoute(builder: (context) => sumscreen(result: _sum)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sum",style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,),

      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              TextFormField
                (
                controller: num1,
                decoration: InputDecoration(hintText: "Enter First number",border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),

              SizedBox(height: 20,),

              TextFormField
                (
                controller: num2,
                decoration: InputDecoration(hintText: "Enter Second number",border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),

              SizedBox(height: 20,),

              MaterialButton(
                color: Colors.blue,
                onPressed: (){
                  _result();
                },child: Text('Sum',style: TextStyle(color: Colors.black),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
//q_76 screen

class sumscreen extends StatelessWidget {
  final double result;

  sumscreen({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Result',style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text("Answer is => ${result}")
          ],
        ),
      ),
    );
  }
}