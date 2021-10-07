import 'package:flutter/material.dart';

class tabDua extends StatelessWidget {
  const tabDua({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Text(
              "Tab Dua",
              style: TextStyle(fontSize: 30.0),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Image.asset(
              "img/Favorite-256.png",
              width: 200.0,
            ),
          ],
        ),
      ),
    );
  }
}
