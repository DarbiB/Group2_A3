import 'package:flutter/material.dart';
import './widgets/member1.dart';
import './widgets/member2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Group 2 Github App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Group 2 Github App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Group 2 Github App', style: TextStyle(fontSize: 22)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: const Text('Group 2 Application',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Member1()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Darbi's Page", style: TextStyle(fontSize: 22)),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Member2()));
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 13, 78, 15),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Matt's Page", style: TextStyle(fontSize: 22)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Member3()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Trevor's Page", style: TextStyle(fontSize: 22)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
