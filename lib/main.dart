import 'package:flutter/material.dart';
import 'package:restroom_rate/thankyou.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: RateForm(),
    );
  }
}

class RateForm extends StatelessWidget {
  const RateForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Good Morning",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Text(
                "Please rate our restroom",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(
                height: 32.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.sentiment_very_dissatisfied),
                    iconSize: 100.0,
                    color: Colors.yellow[600],
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThankyouPage()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.sentiment_dissatisfied),
                    iconSize: 100.0,
                    color: Colors.yellow[600],
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThankyouPage()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.sentiment_neutral),
                    iconSize: 100.0,
                    color: Colors.yellow[600],
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThankyouPage()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.sentiment_satisfied),
                    iconSize: 100.0,
                    color: Colors.yellow[600],
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThankyouPage()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.sentiment_very_satisfied),
                    iconSize: 100.0,
                    color: Colors.yellow[600],
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThankyouPage()),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
