import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Url_Launcher"),
        centerTitle: true,
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                launchUrl(Uri.https("flutter.dev"));
              },
              color: Colors.red,
              child: Text("Launch Web Url"),
            ),
            MaterialButton(
              onPressed: () {
                launchUrl(Uri.parse(
                    "mailto:gourimadathil2001@gmail.com?subject=hi&&bpdy=hello"));
              },
              color: Colors.green,
              child: Text("Launch Mail Url"),
            )
          ],
        ),
      ),
    );
  }
}
