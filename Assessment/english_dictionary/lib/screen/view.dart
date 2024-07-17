import 'package:english_dictionary/Database/Dbhelper.dart';
import 'package:english_dictionary/screen/dictionary_page.dart';
import 'package:english_dictionary/widgets/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'edit.dart';

class ViewDetails extends StatefulWidget
{
  @override
  ViewDetailsState createState() => ViewDetailsState();

}

class ViewDetailsState extends State<ViewDetails>
{
  TextEditingController searchController = TextEditingController();
  List<Map> slist = [];
  MyDb mydb = new MyDb();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mydb.open();
    getdata();
  }


  @override
  Widget build(BuildContext context)
  {

    return Scaffold(

      appBar: AppBar(
        title: Text("Your Word", style: TextStyle(color: Colors.white)),
        backgroundColor: kBrown,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: kLightBrown,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  controller: searchController,
                  onChanged: filterTasks ,
                  decoration: InputDecoration(
                    labelText: "Search by Word",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon
                      (Icons.search),
                  ),
                ),
              ),

              Container(

                child: slist.length == 0 ? Text("No any word to show."):
                Column(

                    children: slist.map((stuone)
                    {
                      return Card
                        (
                        child: ListTile(

                          leading: Icon(Icons.library_books_rounded),
                          title: Text(stuone["word"],style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Row(
                            children: [
                              Text("meaning:",style: TextStyle(fontSize: 15,color: Colors.black),),
                               Text(stuone["meaning"],style: TextStyle(fontSize: 15,color: Colors.blue),)
                            ],
                          ),
                          trailing: Wrap(
                            children: [

                              IconButton(onPressed: ()
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
                                {
                                  return EditStudents(word: stuone["word"]);
                                }
                                ));
                              }, icon: Icon(Icons.edit, color: Colors.blue)),

                              IconButton(onPressed: (){

                                mydb.db.rawDelete("DELETE FROM students where word = ? ", [stuone["word"]]);
                                print("Data Deleted");
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Word Deleted")));
                                getdata();

                              }, icon: Icon(Icons.delete, color: Colors.red)),
                            ],
                          ),
                        ),
                      );
                    }).toList()
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Home_Page()));
        },
        child: Icon(Icons.add),
      ),


    );



  }

  void getdata()
  {
    Future.delayed(Duration(milliseconds: 500),()async
    {
      slist = await mydb.db.rawQuery('SELECT * FROM students');
      setState(()
      {

      });
    });
  }



  void filterTasks(String query)
  {
    if (query.isEmpty) {
      getdata(); // If the search query is empty, show all tasks
    } else {
      List<Map> filteredList = slist!
          .where((task) =>
      task["word"]!.toLowerCase().contains(query.toLowerCase()) ||
          task["meaning"]!.toLowerCase().contains(query.toLowerCase()))
          .toList();
      setState(() {
        slist = filteredList;
      });
    }
  }
}
