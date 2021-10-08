import 'package:flutter/material.dart';

class tabTiga extends StatelessWidget {
  const tabTiga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
              ),
              Text(
                "Tab Tiga",
                style: TextStyle(fontSize: 30.0),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
              ),
              Image.asset(
                "img/place.png",
                width: 200.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
