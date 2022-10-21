import 'package:flutter/material.dart';
import '/main.dart';

class Member4 extends StatefulWidget {
  const Member4({super.key});

  @override
  State<Member4> createState() => _Member4State();
}

class _Member4State extends State<Member4> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Center(
            child: AppBar(
              backgroundColor: Colors.blueGrey,
              title: Text("Laura's Page", style: TextStyle(fontSize: 22)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              ("Laura likes to sleep alot"),
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              //Navigator.push(
              //context, MaterialPageRoute(builder: (context) => MyApp()));
            },
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("GOTO Main", style: TextStyle(fontSize: 22.0)),
            ),
          ),
        ],
      ),
    );
  }
}
