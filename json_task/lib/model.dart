import 'package:flutter/material.dart';

class Model extends StatelessWidget
{
  late List list;
  Model({required this.list});


  @override
  Widget build(BuildContext context)
  {
    return ListView.builder
      (
        itemCount: list.length,
        itemBuilder:(context,index)
        {
          return ListTile
            (

            leading: Image.network(list[index]['imageurl'],
                width: 100,height: 200,),

            title: Text(
              list[index]['name'],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4), // Add some spacing
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(text: 'Real Name: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: '${list[index]['realname']}'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(text: 'Team: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: '${list[index]['team']}'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(text: 'First Appearance: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: '${list[index]['firstappearance']}'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(text: 'Created By: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: '${list[index]['createdby']}'),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(text: 'Publisher: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: '${list[index]['publisher']}'),
                    ],
                  ),
                ),
                SizedBox(height: 4), // Add some spacing
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(text: 'Bio: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: '${list[index]['bio']}'),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}