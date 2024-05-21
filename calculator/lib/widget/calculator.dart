import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final TextEditingController _firstvariable = TextEditingController();
  final TextEditingController _secondvariable = TextEditingController();
  String _result = '';
//function//
  void _calculate(String operation) {
    final number1 = int.tryParse(_firstvariable.text);
    final number2 = int.tryParse(_secondvariable.text);
    if (number1 == null || number2 == null) {
      setState(() {
        _result = 'Invalid input';
      });
      return;
    }
    switch (operation) {
      case 'Addition':
        setState(() {
          _result = (number1 + number2).toString();
        });
        break;
      case 'Subtraction':
        setState(() {
          _result = (number1 - number2).toString();
        });
        break;
      case 'Multiplication':
        setState(() {
          _result = (number1 * number2).toString();
        });
        break;
      case 'Division':
        if (number2 != 0) {
          setState(() {
            _result = (number1 / number2).toString();
          });
        } else {
          setState(() {
            _result = 'Cannot divide by zero';
          });
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Calculator",
            style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.normal,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          leading: Icon(Icons.home),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                      label: Text("Enter the first number"),
                      hintText: "Number 1"),
                  controller: _firstvariable,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10), // Space between TextFields
                TextField(
                  decoration: InputDecoration(
                      label: Text("Enter the second number"),
                      hintText: "Number 2"),
                  controller: _secondvariable,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20), // Space between TextField and Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _calculate('Addition');
                      },
                      child: Text("Addition"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _calculate('Subtraction');
                      },
                      child: Text("Subtraction"),
                    ),
                  ],
                ),
                SizedBox(height: 10), // Space between Button Rows
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _calculate('Multiplication');
                      },
                      child: Text("Multiplication"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _calculate('Division');
                      },
                      child: Text("Division"),
                    ),
                  ],
                ),
                SizedBox(height: 20), // Space between Buttons and Result
                Text(
                  _result,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
