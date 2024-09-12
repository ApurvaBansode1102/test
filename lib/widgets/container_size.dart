import 'package:flutter/material.dart';

class Container_Size extends StatefulWidget {
  const Container_Size({super.key});

  @override
  State<Container_Size> createState() => _Container_SizeState();
}

class _Container_SizeState extends State<Container_Size> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container & Sizebox'),
      ),
        body: Center(
          child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  // shape: BoxShape.circle,
                  // borderRadius: BorderRadius.circular(20),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 12, spreadRadius: 5, color: Colors.black)
                  ]),
              child: Center(
                  child:
                  Container(margin: const EdgeInsets.all(10), color: Colors.red)
                // Text('Hello', style: TextStyle(fontSize: 20))
              )),
        )
      // SizedBox(height: 100, width: 50, child: Text('Hello')),
    );
  }
}
