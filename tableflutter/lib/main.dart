import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Students Details"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.13),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            headingRowColor:
                WidgetStateColor.resolveWith((states) => Colors.green.shade300),
            columns: [
              DataColumn(label: Text("ID")),
              DataColumn(label: Text("FirstNumber")),
              DataColumn(label: Text("Phone Number")),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("1")),
                DataCell(Text("GouriKrishna S")),
                DataCell(Text("7994613924"))
              ]),
              DataRow(cells: [
                DataCell(Text("2")),
                DataCell(Text("Lido")),
                DataCell(Text("89567810"))
              ]),
              DataRow(cells: [
                DataCell(Text("3")),
                DataCell(Text("Amala")),
                DataCell(Text("89567810"))
              ]),
              DataRow(cells: [
                DataCell(Text("4")),
                DataCell(Text("Amalu")),
                DataCell(Text("1234567896"))
              ]),
              DataRow(cells: [
                DataCell(Text("5")),
                DataCell(Text("chikku")),
                DataCell(Text("1345678965"))
              ]),
              DataRow(cells: [
                DataCell(Text("6")),
                DataCell(Text("vishnu")),
                DataCell(Text("24515858"))
              ]),
              DataRow(cells: [
                DataCell(Text("7")),
                DataCell(Text("Akshay")),
                DataCell(Text("968574123"))
              ]),
              DataRow(cells: [
                DataCell(Text("8")),
                DataCell(Text("Asim")),
                DataCell(Text("96965898"))
              ]),
            ],
          ),
        ),
      ),
    ));
  }
}
