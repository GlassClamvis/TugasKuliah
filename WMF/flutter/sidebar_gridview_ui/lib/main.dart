import 'package:flutter/material.dart';

import 'detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  String gambar1 =
      "https://scholar.googleusercontent.com/citations?view_op=view_photo&user=a_KipnEAAAAJ&citpid=1";
  String gambar2 = "http://jti.polije.ac.id/assets/img/staf/hadi.png";
  late String backup;

  String nama1 = "I Gede Wiryawan";
  String nama2 = "Novianto Hadi Raharjo";
  late String backupNama;

  String mail1 = "igdw@windowslive.com";
  String mail2 = "novianto_hadi@polije.ac.id";
  late String backupMail;

  void gantiUser() {
    setState(() {
      backup = gambar1;
      gambar1 = gambar2;
      gambar2 = backup;

      backupNama = nama1;
      nama1 = nama2;
      nama2 = backupNama;

      backupMail = mail1;
      mail1 = mail2;
      mail2 = backupMail;
    });
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(nama1),
              accountEmail: Text(mail1),
              currentAccountPicture: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          Detail(nama: nama1, gambar: gambar1)));
                },
                child: CircleAvatar(backgroundImage: NetworkImage(gambar1)),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://ae01.alicdn.com/kf/HTB1p4MIKVXXXXa.XVXXq6xXFXXXR/1PC-Zakka-16-Lattice-Desktop-Drawer-Storage-Box-Wooden-Retro-Creative-Storage-CabinetLiving-Room-Decoration.jpg"),
                      fit: BoxFit.cover)),
              otherAccountsPictures: <Widget>[
                GestureDetector(
                    onTap: () => gantiUser(),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(gambar2),
                    ))
              ],
            ),
            const ListTile(
              title: Text("Setting"),
              trailing: Icon(Icons.settings),
            ),
            const ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
