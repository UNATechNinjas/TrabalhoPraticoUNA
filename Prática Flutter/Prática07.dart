import 'package:flutter/material.dart';

void main() {
  runApp(Center(
    child: Container(
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: Container(
          height: 350,
          width: 350,
          child: Image(image: NetworkImage('https://i.picsum.photos/id/37/250/250.jpg?hmac=ZMIo0U9qQ6H3-jXK1khrSHzz-JeUuFQw5Hu0VO8Sdjg')),
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.yellow,
      ),
    ),
  ));
}