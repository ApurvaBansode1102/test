import 'package:flutter/material.dart';

class UIClone extends StatefulWidget {
  const UIClone({super.key});

  @override
  State<UIClone> createState() => _UICloneState();
}

class _UICloneState extends State<UIClone> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                  child: Container(
                    height: 500,
                   // color: Colors.yellow,
                  )
              ),
              Positioned(
                  child: Container(
                    height: 450,
                  //  color: Colors.red,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: NetworkImage('https://wallpapercave.com/wp/JTpVKUS.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
              ),
              const Positioned(
                bottom: 0,
                  right: 24,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://i.pinimg.com/originals/71/c4/12/71c412aee07cb75c675b71419ecf82d2.jpg'),
                  )
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
          //  color: Colors.blue,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('Madrid City Tour for Designers', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                 SizedBox(height: 10,),
                 Text('This is a random description for the topic', style: TextStyle(fontSize: 15),)
               ],
            ),
          ),
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                rowIconText('20', Icons.favorite_outlined),
                rowIconText('34', Icons.upload),
                rowIconText('82', Icons.message),
                rowIconText('295', Icons.face_2),
              ],
            ),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text('It was a bright and sunny morning. Birds were chirping cheerfully, and the soft rays of the sun filtered through the leaves of the trees. In a small village, a boy named Alex was playing with his friends on the grassy meadow. He held a colorful kite in his hands, eager to fly it high into the sky.'),
          )
        ],
      ),
    );
  }
}

Widget rowIconText(String text, IconData icon){
  return Row(
    children: [
      Text(text, style:(const TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
      ),
      const SizedBox(width: 5,),
      Icon(icon)
    ],
  );


}



