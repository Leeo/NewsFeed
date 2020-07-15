import 'package:flutter/material.dart';
import '../categories_head.dart';

class Community extends StatelessWidget {
  const Community({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Community",
            style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(fontWeight: FontWeight.bold),           
            ),
          ),
          Categories(),
        ],
      );
    }
}