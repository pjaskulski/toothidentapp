import 'package:flutter/material.dart';
import 'screens/screen22.dart';
import 'package:toothidentapp/tools/tools.dart';

void main() {
  runApp(ToothApp());
}

class ToothApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: true,
      title: 'Tooth Identification',
      home: MyHomePage(title: 'Tooth Identification'),
      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id: (context) => MyHomePage(title: 'Tooth Identification'),
        Screen22.id: (context) => Screen22(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

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
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/tooth.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 30.0),
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
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
