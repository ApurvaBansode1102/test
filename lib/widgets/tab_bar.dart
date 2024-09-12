import 'package:flutter/material.dart';

class TabBar extends StatefulWidget {
  const TabBar({super.key});

  @override
  State<TabBar> createState() => _TabBarState();
}

class _TabBarState extends State<TabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Whatasapp'),
            backgroundColor: Colors.blue,
        )
    )
    );}
}
