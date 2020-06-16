import 'package:flutter/material.dart';
import 'main.dart';
import 'news.dart';
import 'newsfeed.dart';

class Community extends StatefulWidget {
  Community({Key key}) : super(key: key);

  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  PageController _pageController;
  int page = 2;

  @override
 Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white38,
       body: new PageView(
         children: [
           new Title3(),
           new Container(
             color: Colors.white
           )
         ],
       ),
    );
  }
}

class Title3 extends StatefulWidget {
  Title3({Key key}) : super(key: key);

  @override
  _Title3State createState() => _Title3State();
}

class _Title3State extends State<Title3> {
  @override
    Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.fromLTRB(20, 30, 20, 20),
      child:
      Text('Community',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 38,
        fontStyle: FontStyle.normal
      ),
      ),
    );
  }
}