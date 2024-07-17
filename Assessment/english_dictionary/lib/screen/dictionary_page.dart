import 'package:carousel_slider/carousel_slider.dart';
import 'package:english_dictionary/Database/Dbhelper.dart';
import 'package:english_dictionary/widgets/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'view.dart';

class Home_Page extends StatefulWidget {
  @override
  Home_PageState createState() => Home_PageState();
}

class Home_PageState extends State<Home_Page> {
  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController wordController = TextEditingController();
  final TextEditingController meaningController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  MyDb mydb = MyDb();

  @override
  void initState() {
    mydb.open();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Own Dictionary", style: TextStyle(color: Colors.white)),
        backgroundColor: kBrown,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        color: kLightBrown, // Set background color of the body
        child: Form(
          key: _formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text(
              "Add a Word",
              style: TextStyle(
                  color: white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    speak(wordController.text);
                  },
                  icon: Icon(Icons.volume_up, color: white),
                ),
                SizedBox(
                  height: 100,
                  width: 200,
                  child: TextFormField(
                    controller: wordController,
                    decoration: InputDecoration(
                      labelText: 'Word',
                      hintText: 'Enter a Word',
                      labelStyle: TextStyle(color: white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: white),
                      ),
                    ),
                    cursorColor: white,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a word';
                      }
                      return null;
                    },
                  ),
                ),
                IconButton(
                  onPressed: () {
                    wordController.clear();
                  },
                  icon: Icon(Icons.highlight_remove, color: white),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    speak1(meaningController.text);
                  },
                  icon: Icon(Icons.volume_up, color: white),
                ),
                SizedBox(
                  height: 100,
                  width: 200,
                  child: TextFormField(
                    controller: meaningController,
                    decoration: InputDecoration(
                      labelText: 'Meaning',
                      labelStyle: TextStyle(color: white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: white),
                      ),
                    ),
                    cursorColor: white,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a meaning';
                      }
                      return null;
                    },
                  ),
                ),
                IconButton(
                  onPressed: () {
                    meaningController.clear();
                  },
                  icon: Icon(Icons.highlight_remove, color: white),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 140,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        mydb.db.rawInsert(
                          "INSERT INTO STUDENTS (word, meaning) VALUES (?, ?);",
                          [wordController.text, meaningController.text],
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Word Added Successfully")),
                        );
                        wordController.clear();
                        meaningController.clear();
                      }
                    },
                    child: Text("Add Word"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: kBlueGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                SizedBox(
                  height: 50,
                  width: 140,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ViewDetails()),
                      );
                    },
                    child: Text("View Dictionary"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: kBlueGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20, width: 10),
            Column(
              children: [
                SizedBox(
                  height: 40,
                  width: 160,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      websitelaunch();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: kBlueGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    icon: Icon(Icons.g_mobiledata),
                    label: Text("Google"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            SizedBox(
              height: 150,
              child: CarouselSlider(
                items: [
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("images/background_image.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("images/images11.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("images/images12.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 150.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.easeInQuad,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 1000),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }

  void speak(String word) async {
    await flutterTts.speak(word);
  }

  void speak1(String meaning) async {
    await flutterTts.speak(meaning);
  }

  void websitelaunch() async {
    const url = 'https://www.google.co.in/';
    if (await canLaunchUrl(Uri.parse(url)))
    {
      await launchUrl(Uri.parse(url), );
    } else
    {
      throw 'Could not launch $url';
    }
  }
}
