import 'package:flutter/material.dart';
import 'package:toothidentapp/screens/screen22.dart';
import 'package:toothidentapp/tools/tools.dart';

class MyHomePage extends StatefulWidget {
  static const String id = 'Home';
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
          icon: Icon(Icons.info),
          onPressed: () {
            showAppAbout(context);
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage('images/tooth.jpg'),
                ),
                elevation: 18.0,
                shape: CircleBorder(),
                clipBehavior: Clip.antiAlias,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 30.0),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[50],
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        '"Learning to identify isolated teeth is difficult. '
                        'In order to learn these visual patterns, '
                        'the beginning osteologist must learn to make a series of '
                        'observations and judgments about the morphology of the tooth '
                        'to be identified."',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        '(White, Black, Folkens, 2011, p. 563)',
                        style: TextStyle(fontSize: 12.0),
                        textAlign: TextAlign.right,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red)),
                        child: Text(
                          'Start',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          // go to first screen
                          Navigator.pushNamed(context, Screen22.id);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
