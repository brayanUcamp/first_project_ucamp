import 'package:flutter/material.dart';
import 'package:m1_s4_ucamp/card_scroll_man_view.dart';
import 'package:m1_s4_ucamp/card_scroll_woman_view.dart';
import 'package:m1_s4_ucamp/counter.dart';

class HomeWoman extends StatefulWidget {
  const HomeWoman({
    super.key,
  });

  @override
  State<HomeWoman> createState() => _HomeWomanState();
}

class _HomeWomanState extends State<HomeWoman> {
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
          CardScrollWomanView(
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
