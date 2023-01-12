import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Seba Automation'),
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
  int _sbox = 0;
  dynamic _clicked = '0 Times';
  dynamic _boxItem = 'Box-1';

  void _incrementCounter() {
    setState(() {
      _counter++;
      _clicked = 'Hi $_counter';
    });
  }

  void _demoClick() {
    setState(() {
      _sbox++;
      _boxItem = 'Box- $_sbox';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            children: [
              Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.cover,
              ),
              Text('Hi, Andi Loshi')
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 29, 230, 11),
        actions: [
          IconButton(
            icon: Icon(Icons.power_off, color: Colors.pinkAccent),
            onPressed: () => _demoClick(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: Center(
          child: GridView.extent(
        primary: false,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        maxCrossAxisExtent: 200.0,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: Text('$_boxItem', style: TextStyle(fontSize: 20)),
            color: Colors.yellow,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Text('$_counter', style: TextStyle(fontSize: 20)),
            color: Colors.blue,
          ),
          Container(
            child: Text('$_counter', style: TextStyle(fontSize: 20)),
            padding: const EdgeInsets.all(8),
            color: Colors.blue,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Text('Birth Certificate', style: TextStyle(fontSize: 20)),
            color: Colors.yellow,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Fifth', style: TextStyle(fontSize: 20)),
            color: Colors.yellow,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Six', style: TextStyle(fontSize: 20)),
            color: Colors.blue,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 29, 230, 11),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
  }
}
