import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: Text(
                    'OOP',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: Text(
                    'DART',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Container(
                height: 60,
                decoration: BoxDecoration(
                  // color: Colors.blue[600],
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromRGBO(170, 214, 250, 1),
                      const Color.fromARGB(255, 81, 174, 250),
                      const Color.fromARGB(255, 36, 142, 230),
                      const Color.fromARGB(255, 36, 128, 203),
                      const Color.fromARGB(255, 0, 91, 165),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: Text(
                    'FLUTTER',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
