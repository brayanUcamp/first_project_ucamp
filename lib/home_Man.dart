import 'package:flutter/material.dart';
import 'package:m1_s4_ucamp/card_scroll_man_view.dart';
import 'package:m1_s4_ucamp/card_scroll_woman_view.dart';
import 'package:m1_s4_ucamp/counter.dart';

class HomeMan extends StatefulWidget {
  const HomeMan({
    super.key,
  });

  @override
  State<HomeMan> createState() => _HomeManState();
}

class _HomeManState extends State<HomeMan> {
  int counter = 0;

  void _incrementCounter() {
    setState(() => (counter = counter + 5));
  }

  void _decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter = counter - 5;
      }
    });
  }

  void _removeCounter() {
    setState(() => counter = 0);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CardScrollManView(
            counter: counter,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 70),
            child: CounterWidgets(
              counter: counter,
              decrementCounter: _decrementCounter,
              incrementCounter: _incrementCounter,
              removeCounter: _removeCounter,
            ),
          )
        ],
      ),
    );
  }
}
