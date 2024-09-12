import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Telegram'),
            Icon(Icons.search),
          ],
        ),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: Drawer(
       child: Container(
         color:Colors.blueAccent,
         child: ListView(
           children: [
             DrawerHeader(
               padding: EdgeInsets.zero,
                 child:  Container(
                //   color: Colors.red,
                   padding: const EdgeInsets.all(10),
                   child: const Row(
                     children: [
                       CircleAvatar(
                        radius: 50,
                         backgroundImage: AssetImage('assets/img.png'),
                       ),
                       SizedBox(width: 10,),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('Apurva Bansode',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                           Text('7875657561',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                         ],
                         )
                     ],
                   ),
                 ),),
             const ListTile(
               leading: Icon(Icons.person_2_rounded),
               title: Text('My profile'),
             ),
             const ListTile(
               leading: Icon(Icons.group),
               title: Text('New Group'),
             ),
             const ListTile(
               leading: Icon(Icons.contacts),
               title: Text('Contacts'),
             ),
             const ListTile(
               leading: Icon(Icons.call_sharp),
               title: Text('Calls'),
             ),
             const ListTile(
               leading: Icon(Icons.people),
               title: Text('People Near by'),
             ),
             const ListTile(
               leading: Icon(Icons.settings),
               title: Text('Settings'),
             ),
             const Divider(),
             const ListTile(
               leading: Icon(Icons.person),
               title: Text('Invites Friends'),
             ),
             const ListTile(
               leading: Icon(Icons.question_mark_rounded),
               title: Text('Telegram Features'),
             ),
           ],
         ),
       )
      ),
      body: ListView.builder(
         itemCount: 20,
          itemBuilder:(context, index){
            return const Card(
                child:ListTile(
                leading: Icon(Icons.group),
            title: Text('Group for Exam Preparation'),
            subtitle: Text('Question Papers'),
            ),
            );
         }
      ),

    );
  }
}
