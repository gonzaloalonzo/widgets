import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
         actions: <Widget>[

           Container(
             padding: EdgeInsets.all(5.0),
             child: CircleAvatar(
               backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1018943227791982592/URnaMrya_400x400.jpg'),
             ),
           ),

           Container(
             margin: EdgeInsets.only(right: 10.0),
             child: CircleAvatar(
               child:Text('SL'),
               backgroundColor: Colors.brown,
             ),
           )
         ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://www.normacomics.com/blog/wp-content/uploads/2016/01/Stan-Lee-y-Marvel-2.jpg'),
          placeholder: AssetImage('image/jar.gif'),
          fadeInDuration: Duration(milliseconds: 200) ,)
      )
    );
  }
}