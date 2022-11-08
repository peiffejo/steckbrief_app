import 'package:flutter/material.dart';
import 'package:steckbrief_app/screens/Datenschutz_screen.dart';
import 'package:steckbrief_app/screens/second_screen.dart';
import 'package:steckbrief_app/screens/stack_screen.dart';

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
              machZeile(text: "Steckbrief Johannes"),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => second_screen()),);
              },
                  child: Text("Second")),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => StackScreen()),);
              },
                  child: Text("Stack")),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Datenschutz_screen()),);
              },
                  child: Text("Datenschutz")),
              machZeile(text: "Alter: 25"),
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
