import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerstate/provider/providerdemo.dart';

import 'page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Providerdemo(),
        child: MaterialApp(title: 'Flutter Demo', home: Page1()));
  }
}
