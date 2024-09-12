import 'package:flutter/material.dart';

class DisWidget extends StatefulWidget {
  const DisWidget({super.key});

  @override
  State<DisWidget> createState() => _DisWidgetState();
}

class _DisWidgetState extends State<DisWidget> {
  List<String> fruits = ['orange', 'mango', 'banana','apple'];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:   AppBar(
        title: const Text('Dismissible widget'),
    ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder:  (context,index){
          final fruit = fruits[index];
          return Dismissible(
            onDismissed: (direction){
              if(direction==DismissDirection.startToEnd){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),
                  backgroundColor: Colors.red,));
              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),
                  backgroundColor: Colors.green,));
              }
            },
              key: Key(fruit),
              background: Container(color: Colors.red,), // swap the right to left color chnage
              secondaryBackground: Container(color: Colors.green,),
              child: Card(
                child: ListTile(title: Text(fruits[index]),),
              )
          );
        }
      )
    );
  }
}
