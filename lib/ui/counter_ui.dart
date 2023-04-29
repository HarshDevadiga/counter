import 'package:counterapp/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counterpage extends StatefulWidget {
  const Counterpage({super.key});

  @override
  State<Counterpage> createState() => _CounterpageState();
}

class _CounterpageState extends State<Counterpage> {
  @override
  Widget build(BuildContext context) {
    final counterprovider =
        Provider.of<CounterProvider>(context, listen: false);

    print("hrelol");
    return Scaffold(
      appBar: AppBar(title: const Text("hello counter")),
      body: Column(
        children: [
          Center(child: Consumer<CounterProvider>(builder: ((context, value, child) {
            return Text(value.count.toString());
          }))),
          ElevatedButton(
              onPressed: () {
                counterprovider.increment();
              },
              child: const Text("inc")),
              ElevatedButton(
              onPressed: () {
                counterprovider.decrement();
              },
              child: const Text("dec"))
        ],
      ),
    );
  }
}
