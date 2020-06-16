import 'package:flutter/material.dart';
import 'main.dart';

class News extends StatefulWidget {
  News({Key key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  PageController _pageController;
  int page = 2;

  @override
 Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white38,
       body: new PageView(
         children: [
           new Title2(),
           new Container(
             color: Colors.white
           )
         ],
       ),
    );
  }
}

class Title2 extends StatefulWidget {
  Title2({Key key}) : super(key: key);

  @override
  _Title2State createState() => _Title2State();
}

class _Title2State extends State<Title2> {
  @override
    Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.fromLTRB(20, 30, 20, 20),
      child:
      Text('News',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 38,
        fontStyle: FontStyle.normal
      ),
      ),
    );
  }
}