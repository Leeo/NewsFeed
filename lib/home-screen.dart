import 'package:flutter/material.dart';
import 'package:solo/contants.dart';
import 'newsfeed.dart';
import 'news.dart';
import 'community.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _pageController;
  int _page = 0;
  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          appBar: buildAppBar(),
          body: new PageView(
            children:[
          new Title(color: Colors.black,
          child: Container(),),
          new News(),
          new Community()
        ],
        controller: _pageController,
        onPageChanged: onPageChanged
      ),
      bottomNavigationBar:  new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.notification_important),
            title: new Text("NewsFeed")
          ),
          new BottomNavigationBarItem(
            icon: new Icon (Icons.add),
            title: new Text("News")
          ),
          new BottomNavigationBarItem(
            icon: new Icon (Icons.people),
            title: new Text ("Community")
          )
        ],
        onTap: navigationTapped,
        currentIndex: _page
      )
    );
  }

  AppBar buildAppBar() {
    return AppBar(
          backgroundColor: Colors.white,
          elevation: 5,
          leading: IconButton(
            icon: const Icon(Icons.keyboard_backspace,
            color: lTitleTextColor),
           onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search,
              color: lTitleTextColor),
              onPressed: () {},
            ),
            SizedBox(width: 20.0 / 2)
          ],
        );
  }
  void navigationTapped(int page){
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear
    );
  }

  void onPageChanged(int page){
    setState(() {
      this._page = page;
    });
  }

  @override
  void initState() { 
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() { 
    super.dispose();
    _pageController.dispose();
  }


}