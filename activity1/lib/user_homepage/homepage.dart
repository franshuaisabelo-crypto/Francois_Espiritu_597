import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  double result = 0;

  @override
  void initState() {
    super.initState();
    number1.text = "0";
    number2.text = "0";
    result = 0;
  }

  void addNumbers() {
    setState(() {
      result = double.parse(number1.text) + double.parse(number2.text);
    });
  }

  void subtractNumbers() {
    setState(() {
      result = double.parse(number1.text) - double.parse(number2.text);
    });
  }

  void multiplyNumbers() {
    setState(() {
      result = double.parse(number1.text) * double.parse(number2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: number1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Enter first number"),
            ),
            TextField(
              controller: number2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Enter second number"),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: addNumbers, child: const Text("Add")),
                ElevatedButton(onPressed: subtractNumbers, child: const Text("Subtract")),
                ElevatedButton(onPressed: multiplyNumbers, child: const Text("Multiply")),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Result: $result",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
