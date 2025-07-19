import 'package:flutter/material.dart';

class FlutterBasics extends StatelessWidget {
  const FlutterBasics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "My First App",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 100,
              width: 100,
                decoration: BoxDecoration(
                color: Colors.cyanAccent,
              ),
              child: Center(
                child: Text(
                  "Hel",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
              ),
              child: Center(
                child: Text(
                  "Hel",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
              ),
              child: Center(
                child: Text(
                  "Hel",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
              height: 100,
              width: 100,
                decoration: BoxDecoration(
                color: Colors.cyanAccent,
              ),
              child: Center(
                child: Text(
                  "Hel",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
              ),
              child: Center(
                child: Text(
                  "Hel",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
              ),
              child: Center(
                child: Text(
                  "Hel",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
              ),
              child: Center(
                child: Text(
                  "Hel",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
