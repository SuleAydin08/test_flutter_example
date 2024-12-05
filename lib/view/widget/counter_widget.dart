import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  // ignore: unused_element
  void _decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 174, 209, 208),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sayaç: $counter',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      )),
                  child: IconButton(
                      key: const Key('increment_button'),
                      onPressed: () {
                        setState(() {
                          _incrementCounter();
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 20,
                      )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      )),
                  child: IconButton(
                      key: const Key('decrement_button'),
                      onPressed: () {
                        setState(() {
                          _decrementCounter();
                        });
                      },
                      icon: const Icon(
                        Icons.remove,
                        size: 20,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
