import 'package:flutter/material.dart';

class Member3 extends StatefulWidget {
  const Member3({super.key});

  @override
  State<Member3> createState() => _Member3State();
}

class _Member3State extends State<Member3> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(children: [
          AppBar(
            title: const Text(
              "Trevor's Page",
              style: TextStyle(fontSize: 20),
            ),
            backgroundColor: Colors.green,
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Likes to stream with friends.",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "GoTo Main",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
