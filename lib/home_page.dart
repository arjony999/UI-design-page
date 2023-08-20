import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'App Name',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Stack(

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.pinkAccent,
        items: [
          BottomNavigationBarItem(
            // backgroundColor: Colors.pinkAccent,
              icon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
            // backgroundColor: Colors.blue,
              icon: Icon(Icons.call),
              label: 'Call'),
          BottomNavigationBarItem(
            // backgroundColor: Colors.red,
              icon: Icon(Icons.radio),
              label: 'Radio'),
          BottomNavigationBarItem(
            // backgroundColor: Colors.green,
              icon: Icon(Icons.person),
              label: 'Profile'),
        ],

        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
