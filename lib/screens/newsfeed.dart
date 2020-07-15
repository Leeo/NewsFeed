import 'package:flutter/material.dart';
import '../categories_head.dart';
import '../produts_test.dart';

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
                .headline3
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Container(
          padding: EdgeInsets.all(20.0),
          height: 180,
          width: 420,
          decoration: BoxDecoration(
            color: products[0].color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset("assets/images/bolsonaro.png"),
        ),
      ],
    );
  }
}

