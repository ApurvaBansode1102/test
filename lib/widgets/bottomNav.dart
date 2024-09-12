import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedindex =0;

  List<Widget> widgets =[
    Text('home'),
    Text('Search'),
    Text('Add'),
    Text('profile')
  ];


void onTapped(int index){
  setState(() {
    selectedindex= index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(child: widgets.elementAt(selectedindex)),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          backgroundColor: Colors.greenAccent,
          label: 'Home'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            backgroundColor: Colors.greenAccent,
            label: 'Search'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Colors.greenAccent,
            label: 'Profile'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.add),
            backgroundColor: Colors.greenAccent,
            label: 'Add'
        )
      ],
      currentIndex: selectedindex,
       selectedItemColor: Colors.indigo,
       unselectedItemColor: Colors.orangeAccent,
        onTap: onTapped,
      ),
    );
  }
}
