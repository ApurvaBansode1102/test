import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Stack(
             children: [
               Center(child: Container(height: 300, width:300, color: Colors.yellow,)),
               Center(child: Container(height: 150, width:150, color: Colors.red,)),
               Center(child: Container(height: 50, width:50, color: Colors.greenAccent,))
             ],
          ),
        ),
      ),
    );
  }
}
