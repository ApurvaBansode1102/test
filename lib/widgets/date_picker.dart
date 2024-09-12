import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Picker & Time Picker'),
        backgroundColor: Colors.blueAccent,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Select Date', style: TextStyle(fontSize: 25),),
            ElevatedButton(onPressed: () async{
             DateTime? datePicked =  await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2024));

               if(datePicked!=null){
                 print('Date selected: ${datePicked.year},${datePicked.month},${datePicked.day}');
             }
            }, child: Text('Show')
            )
            
          ],
        ),
      ),
    );
  }
}
