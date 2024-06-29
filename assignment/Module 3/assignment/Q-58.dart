import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class SeekBar extends StatefulWidget
{
  @override
  SeekBarState createState() => SeekBarState();

}

class SeekBarState extends State<SeekBar>
{
  double redValue = 0.0;
  double greenValue = 0.0;
  double blueValue = 0.0;


  void updateBackgroundColor()
  {

    setState(() {


    });
  }

  @override
  Widget build(BuildContext context)
  {
  final backgroundColor = Color.fromRGBO(
    redValue.toInt(),
    greenValue.toInt(),
    blueValue.toInt(),
    1.0,
  );

    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        title: Text("SeekBar"),
      ),
      body: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [

            SizedBox(height: 20),


                  Text(
                    'Red: ${redValue.toInt()}',
                    style: TextStyle(color: Colors.red),
                  ),

                  Slider(value: redValue,
                    onChanged: (newValue)
                    {
                      setState(() {
                        redValue = newValue;
                        updateBackgroundColor();
                      });
                    },
                    min: 0.0, // Minimum value
                    max: 100.0, // Maximum value
                    divisions: 100, // Number of discrete divisions
                    label: redValue.toString(),
                  ),

                  Text(
                    'Green: ${greenValue.toInt()}',
                    style: TextStyle(color: Colors.green),
                  ),

                  Slider(value: greenValue,
                    onChanged: (newValue)
                    {
                      setState(() {
                        greenValue = newValue;
                        updateBackgroundColor();
                      });

                    },
                    min: 0.0, // Minimum value
                    max: 100.0, // Maximum value
                    divisions: 100, // Number of discrete divisions
                    label: greenValue.toString(),
                  ),

                  Text(
                    'Blue: ${blueValue.toInt()}',
                    style: TextStyle(color: Colors.blue),
                  ),

                  Slider(value: blueValue,
                    onChanged: (newValue)
                    {
                      setState(() {
                        blueValue = newValue;
                        updateBackgroundColor();
                      });

                    },
                    min: 0.0, // Minimum value
                    max: 100.0, // Maximum value
                    divisions: 100, // Number of discrete divisions
                    label: blueValue.toString(),
                  ),

              SizedBox(height: 20),
              Container(
                width: 500,
                height: 500,
                color: backgroundColor,

              ),
        ],
        ),
      ),

    );
  }

}
          


