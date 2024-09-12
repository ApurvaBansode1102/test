import 'package:flutter/material.dart';

class Snack extends StatelessWidget {
  const Snack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar',style: TextStyle(color: Colors.deepPurple),),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              final snackbar =  SnackBar(
                action: SnackBarAction(
                    label: 'Undo',
                    textColor: Colors.blue,
                    onPressed: (){},
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                behavior: SnackBarBehavior.floating,
             //   padding: EdgeInsets.all(20),
                duration: const Duration(milliseconds: 3000),
                backgroundColor: Colors.red,
                  content: const Text('This is a snack bar'));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            }, child: const Text('Show Snack bar')),
      ),
    );

  }
}