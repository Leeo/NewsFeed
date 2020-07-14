
import 'package:flutter/material.dart';
import 'package:solo/contants.dart';
import 'main.dart';
import 'contants.dart';


class NewsFeed extends StatelessWidget {
  const NewsFeed({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "NewsFeed",
            style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(fontWeight: FontWeight.bold),           
            ),
          ),
          Categories(),
        ],
      );
    }
}

class Categories extends StatefulWidget {
  Categories({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Esporte", "Recente", "Governo", "Saúde"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index),
      )
    );
  }

  Widget buildCategory(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: lTitleTextColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0 / 4),
              height: 2,
              width: 30,
              color: Colors.black,
            )
        ],
      ),
    );
  }
}