import 'package:flutter/material.dart';

void main() {
  runApp(
    Column(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 240,
            width: 240,
            child: FittedBox(
              fit: BoxFit.contain,
              child: const FlutterLogo(),
            ),
          ),
          Image(
            image: NetworkImage(
              'https://picsum.photos/250?image=9',
            ),
          ),
          Text(
            'Google Flutter.',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.white,
            ),
          ),
        ],
    ),
  );
}
