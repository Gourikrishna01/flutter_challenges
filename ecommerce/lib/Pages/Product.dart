import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Products",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200),
        ),
        actions: [Icon(Icons.search)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "hello Products",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}
