import 'package:flutter/material.dart';
import 'package:solo/contants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Corona Virus',
      home: new MainPage(),
    );
  }
}

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
      body: new PageView(
        children:[
          new Container (color: Colors.green),
          new Container (color: Colors.blue),
          new Container (color: Colors.grey)
        ],
        controller: _pageController,
        onPageChanged: onPageChanged
      ),
      bottomNavigationBar:  new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.notification_important),
            title: new Text("Noticias")
          ),
          new BottomNavigationBarItem(
            icon: new Icon (Icons.add),
            title: new Text("Novidades")
          ),
          new BottomNavigationBarItem(
            icon: new Icon (Icons.people),
            title: new Text ("Comunidade")
          )
        ],
        onTap: navigationTapped,
        currentIndex: _page
      )
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