import 'package:flutter/material.dart';

class CounterWidgets extends StatefulWidget {
  const CounterWidgets(
      {super.key,
      required this.counter,
      required this.decrementCounter,
      required this.incrementCounter,
      required this.removeCounter});
  final int counter;
  final VoidCallback decrementCounter;
  final VoidCallback incrementCounter;
  final VoidCallback removeCounter;

  @override
  State<CounterWidgets> createState() => _CounterWidgetsState();
}

class _CounterWidgetsState extends State<CounterWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.transparent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 80, 75, 75),
            onPressed: widget.decrementCounter,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: widget.removeCounter,
            child: Text(
              " Sin Descuentos".toUpperCase(),
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 180, 13, 1),
            onPressed: widget.incrementCounter,
            child: const Icon(
              Icons.add,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
