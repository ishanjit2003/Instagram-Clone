

import 'package:flutter/material.dart';
import 'package:instacram/insta_list.dart';

class InstaStories extends StatelessWidget {
  InstaStories({super.key});



  final topText=Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Stories',style: TextStyle(fontWeight: FontWeight.bold),),
      Row(
        children: [
          Icon(Icons.play_arrow),
          Text('Watch All',style: TextStyle(fontWeight: FontWeight.bold))
        ],
      )
    ],
  );
  
  final stories=Expanded(child: ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index)=>Stack(
        alignment: Alignment.bottomRight,
        children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage('https://i0.wp.com/www.socialnews.xyz/wp-content/uploads/2020/09/02/whatsapp-image-2020-09-02-at-1-56-58-pm1046261.jpg?quality=80&zoom=1&ssl=1'))
              ),
              margin: EdgeInsets.symmetric(horizontal: 8),
            ),
         index==0?Icon(Icons.add_circle,color: Colors.blue,):Column()
        ],
      )));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16)
      ,child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        topText,
        stories
      ],
    ),
    );
  }
}
