
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Datepicker extends StatefulWidget
{
  const Datepicker({super.key});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker>
{
  DateTime selectedDate = DateTime.now();
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd');// For Date
  final DateFormat dayFormat = DateFormat('EEEE'); // For Day

  Future<void> _selectDate(BuildContext context) async
  {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2001),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate)
    {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Select Date",style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              dateFormat.format(selectedDate),
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            Text(
              dayFormat.format(selectedDate),
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                // Text color
                backgroundColor: Colors.blue,
                // Background color
                shadowColor: Colors.black,
                // Shadow color
                elevation: 5,
                // Elevation
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text('Select date'),
            ),
          ],
        ),
      ),
    );
  }
}
