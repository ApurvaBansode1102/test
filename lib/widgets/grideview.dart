import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridView extends StatefulWidget {
  const GridView({super.key});

  @override
  State<GridView> createState() => _GridViewState();
}

class _GridViewState extends State<GridView> {
  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.red,
      Colors.blueAccent,
      Colors.orangeAccent,
      Colors.greenAccent,
      Colors.yellow,
      Colors.indigo,
      Colors.blueGrey
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
