import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:xender/rotas/rotas.dart';


final List<String> imgList = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7'
];
class FullscreenSliderDemo extends StatefulWidget {
  @override
  _FullscreenSliderDemoState createState() => _FullscreenSliderDemoState();
}

class _FullscreenSliderDemoState extends State<FullscreenSliderDemo> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Builder(
              builder: (context) {
                final double height = MediaQuery.of(context).size.height - 40;
                return CarouselSlider(
                  options: CarouselOptions(
                      enableInfiniteScroll: false,
                      height: height,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                  items: imgList
                      .map((item) => Container(
                            child: Center(
                                child: Image.asset("assets/images/${item}.png"),),
                          ))
                      .toList(),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(RotasApp.Home);
                  },
                  child: Text('Pular'),
                ),
                Row(
                  children: imgList.map((url) {
                    int index = imgList.indexOf(url);
                    return Container(
                      width: 10.0,
                      height: 20.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index ? Color.fromRGBO(0, 0, 0, 0.9) : Color.fromRGBO(0, 0, 0, 0.4),
                      ),
                    );
                  }).toList(),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text('       '),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();