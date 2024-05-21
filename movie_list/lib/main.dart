import 'package:flutter/material.dart';

void main() {
  runApp(const MovieList());
}

class MovieList extends StatelessWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "FILMI",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                child: Row(
                  children: [
                    Image.asset(
                      'images/image2.jpeg',
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "premalu",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Malayalam Movie",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.more_horiz),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                child: Row(
                  children: [
                    Image.asset(
                      'images/image1.jpeg',
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bhramayugam",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Malayalam Movie",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.more_horiz),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
