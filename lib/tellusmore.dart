import 'package:flutter/material.dart';

class TellUsMorePage extends StatefulWidget {
  TellUsMorePage({Key key}) : super(key: key);

  @override
  _TellUsMorePageState createState() => _TellUsMorePageState();
}

class _TellUsMorePageState extends State<TellUsMorePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TellUsMore Page',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16),
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
                Colors.pink,
                Colors.purple[900],
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Kindly share with us the reasons for your selection",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 32.0,
                ),
                GridView.count(
                  childAspectRatio: 15 / 15,
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("No Toilet Paper"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text("Foul Smell"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text("Litter Bin Full"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text("West Floor"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text("Dirty Basin"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text("Dirty Toilet"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text("Toilet Temperature"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text("Faulty Equipment"),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.0,
                ),
                Row(
                  children: <Widget>[
                    FlatButton(
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          "Submit",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    FlatButton(
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          "Cancel",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
