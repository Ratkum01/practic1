import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koko/page1.dart';
import 'package:koko/page2.dart';
import 'package:koko/page3.dart';
import 'package:koko/page4.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          backgroundColor: Colors.deepPurple[300]),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;
  List pages = [Page1(), Page2(), Page3(), Page4()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
              child: Text(
            'LOGO',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ))
        ],
      )),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[500],
        title: Text(
          'Просто Практика',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: pages[_selectIndex], 

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType
              .fixed, // фиксед Наб бар и не становится белым
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.offline_bolt_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.offline_bolt_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.offline_bolt_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.offline_bolt_outlined), label: "Home")
          ]),
    );
  }

  void _navigateBottomBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }
}
