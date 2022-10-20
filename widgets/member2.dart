import 'package:flutter/material.dart';
import '/main.dart';

class Member2 extends StatefulWidget {
  const Member2({super.key});

  @override
  State<Member2> createState() => _Member2State();
}

class _Member2State extends State<Member2> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Center(
            child: AppBar(
              backgroundColor: Color.fromARGB(255, 13, 78, 15),
              title: Text("Matt's Page", style: TextStyle(fontSize: 22)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
                ("Matt enjoys playing with his two dogs whenever he can"),
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
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
