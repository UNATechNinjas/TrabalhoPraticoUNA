import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: SizedBox(
        width: 250,
        height: 250,
        child: Stack(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              color: Colors.white,
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.purple,
                    Colors.blue,
                    Colors.blue,
                    Colors.purple,
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                height: 120,
                width: 220,
                child: Image(
                  image: NetworkImage('https://media.giphy.com/media/xT0xezQGU5xCDJuCPe/giphy.gif'),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}