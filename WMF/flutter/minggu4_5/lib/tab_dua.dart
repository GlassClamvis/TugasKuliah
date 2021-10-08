import 'package:flutter/material.dart';

class tabDua extends StatefulWidget {
  const tabDua({Key? key}) : super(key: key);

  @override
  _tabDuaState createState() => _tabDuaState();
}

class _tabDuaState extends State<tabDua> {
  String teks = "Teks Input Akan Tampil disini";
  TextEditingController controller = TextEditingController();

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Daftar Halaman"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Ketik untuk tampilkan Teks di sini",
              ),
              onSubmitted: (String str) {
                setState(() {
                  teks = str + '\n' + teks;
                  controller.text = "";
                });
              },
            ),
            TextField(
              controller: controller1,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Ketik untuk tampilkan Alert di sini",
              ),
              onSubmitted: (String str) {
                _alertDialog(str);
                controller1.text = "";
              },
            ),
            TextField(
              controller: controller2,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Ketik untuk tampilkan Snackbar di sini",
              ),
              onSubmitted: (String str) {
                _snackBar(str);
                controller2.text = "";
              },
            ),
            Text(
              teks,
              style: const TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }

  void _alertDialog(String str) {
    if (str.isEmpty) return;
    AlertDialog alertDialog = AlertDialog(
      title: const Text("Alert"),
      content: Text(
        str,
        style: const TextStyle(fontSize: 20.0),
      ),
      actions: <Widget>[
        FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.red,
          child: const Text("OK"),
        )
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) => alertDialog,
    );
  }

  void _snackBar(String str) {
    if (str.isEmpty) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: const Duration(seconds: 5),
      content: Text(
        str,
        style: const TextStyle(fontSize: 20.0),
      ),
    ));
  }
}
