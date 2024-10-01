import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Tost extends StatefulWidget {
  const Tost({super.key});

  @override
  State<Tost> createState() => _TostState();
}

class _TostState extends State<Tost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TOAST",
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        actions: [Icon(Icons.face)],
        backgroundColor: Colors.black54,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  showToast();
                },
                child: const Text("Show Toast"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                cancelToast();
              },
              child: const Text("Cancel Toast"),
            ),
          ],
        ),
      ),
    );
  }

  void showToast() {
    Fluttertoast.showToast(
      toastLength: Toast.LENGTH_LONG,
      backgroundColor: Colors.orange,
      msg: 'Successfully',
      textColor: Colors.blue,
      gravity: ToastGravity.TOP,
    );
  }

  void cancelToast() {
    Fluttertoast.cancel(); // Cancel any currently displayed toast
  }
}
