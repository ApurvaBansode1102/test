import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Date_Time extends StatefulWidget {
  const Date_Time({super.key});

  @override
  State<Date_Time> createState() => _Date_TimeState();
}

class _Date_TimeState extends State<Date_Time> {
  @override
  Widget build(BuildContext context) {

    var time = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Date & Time'),
      ),
     body: Center(
       child: Container(
         width: 200,
         height: 200,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
         //    Text('Current time, ${time}', style: const TextStyle(fontSize: 25),),
             Text('Current time: ${DateFormat('jms').format(time)}'),
             ElevatedButton(onPressed: (){
               setState(() {

               });
             }, child: const Text('Current time')
             )
           ],
         ),
       ),
     ),
    );
  }
}
