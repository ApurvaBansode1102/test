import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Widget'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(image: NetworkImage
              ('http://3.bp.blogspot.com/-Z7S4ovIP1lA/T78D3tX87pI/AAAAAAAAHPI/4O6WDjN-uhM/s1600/Doraemon+10.jpg'),
                fit: BoxFit.cover),
            boxShadow: const [
              BoxShadow(blurRadius: 5, color: Colors.black,  spreadRadius: 3.0)
            ]
          ),
        ),
      ),
    );
  }
}
