import 'package:flutter/material.dart';
import 'package:m1_s4_ucamp/card_scroll_view.dart';
import 'dart:math';

import 'package:m1_s4_ucamp/product_item_card.dart';

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() => (_counter = _counter + 5));
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter = _counter - 5;
      }
    });
  }

  void _removeCounter() {
    setState(() => _counter = 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: CardScrollView(
        counter: _counter,
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          children: [
            FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 80, 75, 75),
              onPressed: () => _decrementCounter(),
              child: const Icon(Icons.remove),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () => _removeCounter(),
              child: Text(
                " Sin Descuentos".toUpperCase(),
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 180, 13, 1),
              onPressed: () => _incrementCounter(),
              child: const Icon(
                Icons.add,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
