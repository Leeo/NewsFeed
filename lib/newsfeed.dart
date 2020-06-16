import 'package:flutter/material.dart';
import 'package:solo/contants.dart';
import 'main.dart';
import 'contants.dart';

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
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(40.0),
          topRight: const Radius.circular(40.0),
        )
      ),
      child: Scaffold(
         body: CustomScrollView(
           slivers: <Widget>[
           SliverAppBar(
             backgroundColor: lFirtColor,
             pinned: this._pinned,
             snap: this._snap,
             floating: this._floating,
             expandedHeight: 80.0,
             flexibleSpace: FlexibleSpaceBar(
               title: Text("NewsFeed"),
               centerTitle: true,
             ),
           )
           ],
         ),
      ),
    );
  }
}