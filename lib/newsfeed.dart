import 'package:flutter/material.dart';
import 'main.dart';

class NewsFeed extends StatefulWidget {
  NewsFeed({Key key}) : super(key: key);

  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {  
  PageController _pageController;
  int page = 1;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white24,
       body: new PageView(
         children: [
           new Title(),
           new Container(
             color: Colors.white
           )
         ],
       ),
    );
  }
}

class Title extends StatefulWidget {
  Title({Key key}) : super(key: key);

  @override
  _TitleState createState() => _TitleState();
}

class _TitleState extends State<Title> {
  @override
    Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.fromLTRB(20, 30, 20, 20),
      child:
      Text('NewsFeed',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 38,
        fontStyle: FontStyle.normal
      ),
      ),
    );
  }
}

