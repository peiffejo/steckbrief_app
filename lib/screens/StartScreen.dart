import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Johanes"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              machZeile(text: "Steckbrief"),
            ],
          ),
        ),
      ),
    );
  }

  Widget machZeile({text: String}) {
    return Container(
      width: 300,
      color: Colors.black12,
      child: Text(text, style: TextStyle(fontSize: 48)),
    );
  }
}
