import 'package:flutter/material.dart';
import './tab_satu.dart' as tabsatu;
import './tab_dua.dart' as tabdua;
import './tab_tiga.dart' as tabtiga;

void main() {
  runApp(const MaterialApp(
    title: "tabbar image",
    home: PageOne(),
  ));
}

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose(); // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Daftar Halaman"),
        bottom: TabBar(
          controller: controller,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.favorite),
            ),
            Tab(
              icon: Icon(Icons.place),
            )
          ],
        ),
      ),
      body: TabBarView(controller: controller, children: const <Widget>[
        tabsatu.tabSatu(),
        tabdua.tabDua(),
        tabtiga.tabTiga(),
      ]),
    );
  }
}
