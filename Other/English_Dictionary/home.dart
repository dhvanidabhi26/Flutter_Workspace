import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'color.dart';
import 'db.dart';
import 'view.dart';

class Home_Page extends StatefulWidget {
  @override
  Home_PageState createState() => Home_PageState();
}

class Home_PageState extends State<Home_Page> {
  final FlutterTts flutterTts = FlutterTts();
  TextEditingController word = TextEditingController();
  TextEditingController meaning = TextEditingController();

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
        title: Text("Add Words", style: TextStyle(color: Colors.white)),
        backgroundColor: kBrown,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        color: kLightBrown, // Set background color of the body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Add a Word", style: TextStyle(color: kBrown)),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    speak(word.text);
                  },
                  icon: Icon(Icons.volume_up, color: kBrown),
                ),
                SizedBox(
                  height: 100,
                  width: 200,
                  child: TextField(
                    controller: word,
                    decoration: InputDecoration(
                      labelText: 'Word',
                      labelStyle: TextStyle(color: kBrown),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kBrown),
                      ),
                    ),
                    cursorColor: kBrown,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    word.clear();
                  },
                  icon: Icon(Icons.highlight_remove, color: kBrown),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    speak1(meaning.text);
                  },
                  icon: Icon(Icons.volume_up, color: kBrown),
                ),
                SizedBox(
                  height: 100,
                  width: 200,
                  child: TextField(
                    controller: meaning,
                    decoration: InputDecoration(
                      labelText: 'Meaning',
                      labelStyle: TextStyle(color: kBrown),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kBrown),
                      ),
                    ),
                    cursorColor: kBrown,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    meaning.clear();
                  },
                  icon: Icon(Icons.highlight_remove, color: kBrown),
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
                      mydb.db.rawInsert(
                        "INSERT INTO STUDENTS (word, meaning) VALUES (?, ?);",
                        [word.text, meaning.text],
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Word Added Successfully")),
                      );
                      word.text = "";
                      meaning.text = "";
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
                        MaterialPageRoute(builder: (context) => ViewStudent()),
                      );
                    },
                    child: Text("    View Dictionary"),
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
            SizedBox(height: 20),
            Image.asset(
              'images/dictionary_volumes.jpg',
              height: 200,
              width: 200,
            ),
          ],
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
    var url = Uri.parse("https://www.google.com/");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
