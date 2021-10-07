import 'package:flutter/material.dart';

class tabSatu extends StatelessWidget {
  const tabSatu({Key? key}) : super(key: key);
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
              "Tab Satu",
              style: TextStyle(fontSize: 30.0),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Icon(
              Icons.favorite,
              size: 90.0,
            )
          ],
        ),
      ),
    );
  }
}
