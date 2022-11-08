import 'package:flutter/material.dart';

class Datenschutz_screen extends StatelessWidget {
  const Datenschutz_screen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: Text("Datenschutzeinstellungen"),
    ),
    body: Center(
      child: Column(
        children: [
      titelZeile(text: "Wir benötigen Ihre Zustimmung"),
        ],
),
),
    );
  }

  Widget titelZeile({text: String}) {
    return Container(
      width: 300,
      height: 50,
      child: Center(child: Text(text, style: TextStyle(fontSize: 20, color: Colors.indigo, ))),
    );
  }


}
