import 'package:flutter/material.dart';
import 'package:instacram/insta_body.dart';

class InstaHome extends StatelessWidget {
  InstaHome({super.key});

  final topbar=new AppBar(
    backgroundColor: Colors.white60,
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(Icons.camera_alt),
    title: SizedBox(height: 70,child: Image.network('https://1000logos.net/wp-content/uploads/2017/02/Logo-Instagram.png',),),
    actions: [Padding(padding: EdgeInsets.only(right: 12),
      child: Icon(Icons.send),),],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar,
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50,
        alignment: Alignment.center,
        child: BottomAppBar(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.home)),
            IconButton(onPressed: null, icon: Icon(Icons.search)),
            IconButton(onPressed: null, icon: Icon(Icons.add_box)),
            IconButton(onPressed: null, icon: Icon(Icons.favorite)),
            IconButton(onPressed: null, icon: Icon(Icons.account_box)),
          ],),
        ),
      ),
     body: InstaBody(),
    );
  }
}

