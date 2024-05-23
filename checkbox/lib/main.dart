import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? isChecked = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Check Box",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: Icon(Icons.home),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                  tristate: true,
                  value: isChecked,
                  onChanged: (val) {
                    setState(() {
                      isChecked = val;
                    });
                  }),
              Checkbox(
                  activeColor: Colors.red,
                  checkColor: Colors.black,
                  value: isChecked2,
                  onChanged: (val) {
                    setState(() {
                      isChecked2 = val;
                    });
                  }),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CheckboxListTile(
                    title: Text("send me"),
                    value: isChecked3,
                    onChanged: (val) {
                      setState(() {
                        isChecked3 = val;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CheckboxListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    tileColor: Colors.amber,
                    title: Text("send me"),
                    value: isChecked3,
                    onChanged: (val) {
                      setState(() {
                        isChecked3 = val;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    tileColor: Colors.red,
                    title: Text("send me"),
                    value: isChecked3,
                    onChanged: (val) {
                      setState(() {
                        isChecked3 = val;
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
