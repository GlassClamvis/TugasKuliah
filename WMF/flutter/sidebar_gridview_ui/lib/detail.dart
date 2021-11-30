import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail({required this.nama, required this.gambar});
  final String nama;
  final String gambar;
  @override
  Widget build(BuildContext context) {
    var decoration;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail-$nama"),
        backgroundColor: Colors.red[700],
      ),
      body: Center(
          child: Image(
        image: NetworkImage(gambar),
      )),
    );
  }
}
