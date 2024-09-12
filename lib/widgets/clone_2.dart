import 'package:flutter/material.dart';

class Clone extends StatelessWidget {
  const Clone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios,color: Colors.black,),
        centerTitle: false,
        backgroundColor: Colors.white,
        title: const Text(
          'wanda.s',
          style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),
         ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
               // color: Colors.red,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 180,
                  //  color: Colors.purple,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage('https://mymodernmet.com/wp/wp-content/uploads/2019/09/100k-ai-faces-6.jpg'),
                          radius: 60,
                        ),
                        SizedBox(height: 5,),
                        Text('Wanda.S',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Photographer/NewYork',
                          style: TextStyle(
                            fontSize: 14
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                               ProfileDetails('150', 'Posts'),
                                const SizedBox(width: 10,),
                                ProfileDetails('5k', 'Followers'),
                                const SizedBox(width: 10,),
                                ProfileDetails('100', 'Following')
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                      child: ElevatedButton(
                                        style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.blue)),
                                          onPressed: (){}, child: const Text('Follow',style: TextStyle(color: Colors.white,fontSize: 17),))),
                                ),
                                const SizedBox(width: 10,),
                                Container(
                                  height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue,width: 2),
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                  child: const Icon(Icons.keyboard_arrow_down_outlined,color:Colors.blue),
                                ),
                                const SizedBox(width: 10,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              height: 120,
            //  color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                  itemBuilder:  (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.orange,
                          image: DecorationImage(image: NetworkImage('https://sm.askmen.com/t/askmen_in/article/f/facebook-p/facebook-profi'
                              'le-picture-affects-chances-of-gettin_fr3n.1200.jpg',),fit: BoxFit.cover)
                        ),
                      ),
                      const Text('title'),
                    ],
                  );

                  },
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 20,
              thickness: 2,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Email', style: TextStyle(fontSize: 18, color: Colors.blue),),
                Text('Site',style: TextStyle(fontSize: 18, color: Colors.blue)),
                Text('Phone',style: TextStyle(fontSize: 18, color: Colors.blue))
              ],
            ),
            Expanded(
              child: Container(
               // color: Colors.yellow,
                child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                    itemCount: 15,
                    itemBuilder: (context, index) {
                  return Container(
                    height: 150,
                    width: 150,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      image: const DecorationImage(
                        image: NetworkImage('https://tse4.explicit.bing.net/th?id=OIP.Tv3oG-Is7dcMNcysxIVwLAAAAA&pid=Api&P=0&h=180'),
                        fit: BoxFit.cover
                      )
                    ),
                  );
                    },
                ),
                
              ),
            )
          ],
        ),
      ),

    );
  }
}


Widget ProfileDetails(String text1, text2){
  return Column(
    children: [
      Text(
        text1,style: const TextStyle(fontSize: 24),
      ),
      Text(
        text2, style: const TextStyle(fontSize: 14),
      )
    ],
  );


}