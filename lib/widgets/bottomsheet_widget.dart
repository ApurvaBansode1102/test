import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget ({super.key});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet Widget'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          showModalBottomSheet(
            backgroundColor: Colors.greenAccent,
              elevation: 0,
              context: context, builder: (context){
                return const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  ListTile(
                    leading:  Icon(Icons.person),
                    title: Text('Apurva'),
                    subtitle: Text('Msc.computer science'),
                  ),
                  ListTile(
                    leading:  Icon(Icons.person),
                    title: Text('Sneha'),
                    subtitle: Text('Msc.chemistry'),
                  ),
                  ListTile(
                    leading:  Icon(Icons.person),
                    title: Text('Pravin'),
                    subtitle: Text('Msc.bio'),
                  ),
                ],
                );
          }
          );
        },
            child: const Text('Show Bottom Sheet')
        ),
      ),
    );
  }
}
