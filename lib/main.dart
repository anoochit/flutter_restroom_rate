import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restroom Rate',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        body: Container(
          // Add box decoration
          decoration: BoxDecoration(
            // Box decoration takes a gradient
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.1, 0.9],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                Colors.pink[800],
                Colors.purple[900],
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Good Afternoon",
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  "Please rate our restroom",
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 32.0,
                ),
                SmoothStarRating(
                    allowHalfRating: false,
                    onRatingChanged: (v) {
                      rating = v;
                      setState(() {});
                    },
                    starCount: 5,
                    rating: rating,
                    size: 120.0,
                    color: Colors.yellow,
                    borderColor: Colors.yellow,
                    spacing: 0.0)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
