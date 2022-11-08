import 'package:flutter/material.dart';

class second_screen extends StatelessWidget {
  const second_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second"),
      ),
      body: Center(
      child: Column(
        children: [
          Placeholder(
            color: Colors.grey,
            child: SizedBox(
              width: 200,
              height: 300,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              width: 200,
              height: 70,
              child: Text("Zurück"),
              color: Colors.black12,
            ),
          )
        ],
      ),
    ),
    );
  }
}
