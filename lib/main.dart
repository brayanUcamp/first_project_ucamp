import 'package:flutter/material.dart';
import 'package:m1_s4_ucamp/card_scroll_man_view.dart';
import 'package:m1_s4_ucamp/counter.dart';
import 'package:m1_s4_ucamp/home_woman.dart';
import 'dart:math';

import 'package:m1_s4_ucamp/product_item_card.dart';

import 'home_Man.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: HomePage(
        value: _isDarkTheme,
        onChanged: (bool value) {
          setState(() {
            _isDarkTheme = !_isDarkTheme;
          });
        },
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.value, this.onChanged});
  final value;
  final void Function(bool)? onChanged;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _changeNavigatorBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> buttonNavigatorBar = [const HomeMan(), const HomeWoman()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 190, 150, 4),
        title: const Text(
          "Tienda de Ropa",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          const Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          Switch(
            value: widget.value,
            onChanged: (bool value) {
              widget.onChanged?.call(value);
            },
          ),
        ],
      ),
      body: buttonNavigatorBar[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _changeNavigatorBar,
        items: const [
          BottomNavigationBarItem(
            label: "Man",
            icon: Icon(
              Icons.man,
              color: Colors.black,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "Woman",
            icon: Icon(
              Icons.woman_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
