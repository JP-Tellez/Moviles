import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Guess the word!',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Get ready to"),
                  Text(
                    "Guess the word!",
                    style: TextStyle(fontSize: 35),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "SKIP",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                MaterialButton(
                  child: Text(
                    "PLAY",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                  onPressed: () {},
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "END GAME",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
