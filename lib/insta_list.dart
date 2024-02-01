
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instacram/insta_stories.dart';

class InstaList extends StatelessWidget {
 InstaList({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
        itemBuilder: (context,index)=>index==0?SizedBox(
          child: InstaStories(),
          height: deviceSize.height *0.16,
        ):Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(

                    children: [
                      Container(
                        height: 50,
                        width: 50,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image:  NetworkImage('https://files.oyebesmartest.com/uploads/preview/scrape-wp6097393m73gwxk5.jpeg'))
                        ),
                      ),
                      SizedBox(
                          width: 10, ),
                      Text('Sunny Leone',style: TextStyle(fontWeight: FontWeight.bold),),

                      ],
                  ),
                  IconButton(onPressed: null, icon: Icon(Icons.more_vert))
                ],
              ),

                padding: EdgeInsets.fromLTRB(16, 16, 8, 16)

            ),
            Flexible(
            fit: FlexFit.loose,
            child: Image.network('https://file.oyephoto.com/uploads/preview/sunny-leone-sexy-dp-pictures-for-mobile-wallpaper-hd-11632485576zyaqvjnzz3.jpg',fit: BoxFit.cover,)),
            Padding(padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(FontAwesomeIcons.heart),
                    SizedBox(width: 16,),
                    Icon(FontAwesomeIcons.comment),
                    SizedBox(width: 16,),
                    Icon(FontAwesomeIcons.paperPlane),
                  ],
                ),
                Icon(FontAwesomeIcons.bookmark)
              ],
            ),),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text('Liked by ishanjit, lucky and 529,985',style: TextStyle(fontWeight: FontWeight.bold),) ,),
            Padding(padding: EdgeInsets.fromLTRB(16, 16, 0, 8),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: NetworkImage('https://files.oyebesmartest.com/uploads/preview/scrape-wp5324296piepsuji.jpeg'),fit:BoxFit.fill)
                    ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Add a comment ...'
                    ),

                  ),
                )
              ],
            ),),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('1 Day Ago',style: TextStyle(color: Colors.grey),),)



          ],
        )
    );
  }
}
