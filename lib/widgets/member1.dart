import 'package:flutter/material.dart';
import '/main.dart';

class Member1 extends StatefulWidget {
  const Member1({super.key});

  @override
  State<Member1> createState() => _Member1State();
}

class _Member1State extends State<Member1> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Center(
            child: AppBar(
              backgroundColor: Colors.purple,
              title: Text("Darbi's Page", style: TextStyle(fontSize: 22)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(("Darbi likes to listen to music"),
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              //Navigator.push(
              //context, MaterialPageRoute(builder: (context) => MyApp()));
            },
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("GOTO Main", style: TextStyle(fontSize: 22)),
            ),
          ),
        ],
      ),
    );
  }
}
