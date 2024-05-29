import 'package:flutter/material.dart';


class CityPage extends StatefulWidget {
  @override
  _CityPageState createState() => _CityPageState();
}

class _CityPageState extends State<CityPage>
{
  String _selectedCity = 'No city selected';

  void _showCitySelectionDialog() async
  {
    final selectedCity = await showDialog<String>(
      context: context,
      builder: (BuildContext context)
      {
        return CitySelectionDialog(
          cities: ["Ahemadabad","Rajkot","Surat","Gandhinagar","Surendranagar"],
        );
      },
    );

    if (selectedCity != null)
    {
      setState(() {
        _selectedCity = selectedCity;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('City Selection '), backgroundColor: Colors.blue,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text('Selected City:', style: TextStyle(fontSize: 20),),
            SizedBox(height: 10),
            Text(_selectedCity, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showCitySelectionDialog,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                shadowColor: Colors.black,
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: Text('Select City'),
            ),
          ],
        ),
      ),
    );
  }
}

class CitySelectionDialog extends StatefulWidget {
  final List<String> cities;

  CitySelectionDialog({required this.cities});

  @override
  _CitySelectionDialogState createState() => _CitySelectionDialogState();
}

class _CitySelectionDialogState extends State<CitySelectionDialog> {
  String? _selectedCity;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Select a City'),
      content: SingleChildScrollView(
        child: Column(
          children: widget.cities.map((city)
          {
            return RadioListTile<String>(
              title: Text(city),
              value: city,
              groupValue: _selectedCity,
              onChanged: (value) {
                setState(() {
                  _selectedCity = value;
                });
              },
            );
          }).toList(),
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(_selectedCity);
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}
