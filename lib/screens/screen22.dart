import 'package:flutter/material.dart';
import 'package:toothidentapp/data/decisions.dart';
import 'package:toothidentapp/models/decisionstep.dart';

int _currentStep = 0;
List<String> _historySteps = ['2.2'];
List<int> _historyChoices = [0];

class Screen22 extends StatefulWidget {
  static const String id = 'Screen22';
  // constructor?

  @override
  _Screen22State createState() => _Screen22State();
}

class _Screen22State extends State<Screen22> {
  int _choice = 0;

  String getCurrentTitle(int index) {
    String id = _historySteps[index];
    var tmp = steps.firstWhere((i) => i.id == id);
    return tmp.title;
  }

  DecisionStep getCurrentStep(int index) {
    String id = _historySteps[index];
    DecisionStep tmp = steps.firstWhere((i) => i.id == id);
    return tmp;
  }

  String getNextStep(int index, int choice) {
    if (index < _historySteps.length) {
      String id = _historySteps[index];
      var tmp = steps.firstWhere((i) => i.id == id);
      return tmp.choices[choice]['nextStep'];
    } else {
      return '';
    }
  }

  bool isQuestion(int index) {
    String id = _historySteps[index];
    var tmp = steps.firstWhere((i) => i.id == id);
    return tmp.type == 'question';
  }

  List<Widget> createChoiceList(int index) {
    List<Widget> myChoices = [];
    String id = _historySteps[index];
    var tmp = steps.firstWhere((i) => i.id == id);
    for (var i = 0; i < tmp.choices.length; i++) {
      myChoices.add(RadioListTile<int>(
        title: Text(tmp.choices[i]['text']),
        subtitle: tmp.choices[i].containsKey('subtext')
            ? Text(
                tmp.choices[i]['subtext'],
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.black38,
                ),
              )
            : null,
        value: i,
        groupValue: _choice,
        onChanged: (int value) {
          setState(() {
            _choice = value;
            _historyChoices[_currentStep] = _choice;
          });
        },
      ));
    }

    return myChoices;
  }

  void _resetIdentification() {
    _historySteps.removeRange(1, _historySteps.length);
    _historyChoices.removeRange(1, _historyChoices.length);
    _historyChoices[0] = 0;
    _currentStep = 0;
  }

  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Do you really want to interrupt indentification?'),
              actions: <Widget>[
                FlatButton(
                  child: Text('No'),
                  onPressed: () => Navigator.pop(context, false),
                ),
                FlatButton(
                  child: Text('Yes'),
                  onPressed: () {
                    _resetIdentification();
                    Navigator.pop(context, true);
                  },
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tooth Identification'),
          // hide back arrow in appBar, show close button
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                _resetIdentification();
                Navigator.of(context).pop(null);
              },
            )
          ],
          leading: new Container(),
        ),
        body: isQuestion(_currentStep)
            ? Decision(
                choice: _historyChoices[_currentStep],
                currentStep: getCurrentTitle(_currentStep),
                choiceList: createChoiceList(_currentStep),
                onPressBack: _currentStep > 0
                    ? () {
                        setState(() {
                          _historySteps.removeLast();
                          _historyChoices.removeLast();
                          _currentStep = _currentStep - 1;
                          _choice = _historyChoices[_currentStep];
                        });
                      }
                    : null,
                onPressNext: () {
                  setState(() {
                    String nextStep;
                    nextStep = getNextStep(_currentStep, _choice);
                    if (nextStep != '') {
                      _historySteps.add(nextStep);
                      _historyChoices.add(0);
                      _currentStep = _currentStep + 1;
                      _choice = 0;
                    }
                  });
                },
              )
            : Result(
                resultStep: getCurrentStep(_currentStep),
                onPress: () {
                  setState(() {
                    _historySteps.removeRange(1, _historySteps.length);
                    _historyChoices.removeRange(1, _historyChoices.length);
                    _currentStep = 0;
                  });
                },
              ),
      ),
    );
  }
}

class Decision extends StatefulWidget {
  const Decision({
    Key key,
    this.choice,
    this.currentStep,
    this.choiceList,
    this.onPressBack,
    this.onPressNext,
  }) : super(key: key);

  final int choice;
  final String currentStep;
  final List<Widget> choiceList;
  final Function onPressBack;
  final Function onPressNext;

  @override
  _DecisionState createState() => _DecisionState();
}

class _DecisionState extends State<Decision> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Column(children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.currentStep,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: widget.choiceList,
                ),
              ),
            ]),
          ),
          // wyrównanie przycisków do dołu ekranu
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.red,
                    child: Text(
                      'Back',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: widget.onPressBack,
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: widget.onPressNext,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Result extends StatefulWidget {
  const Result({Key key, this.resultStep, this.onPress}) : super(key: key);

  final DecisionStep resultStep;
  final Function onPress;

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // if Result
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.25),
        border: Border.all(),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            widget.resultStep.title,
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Type: ' + widget.resultStep.toothType,
                style: TextStyle(fontSize: 18.0),
                textAlign: TextAlign.start,
              ),
              Text(
                'Dentition: ' + widget.resultStep.toothDentition,
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                'Arcade: ' + widget.resultStep.toothArcade,
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                'Position: ' + widget.resultStep.toothPosition,
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                'Side: ' + widget.resultStep.toothSide,
                style: TextStyle(fontSize: 18.0),
              )
            ],
          ),
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              child: Text(
                'Reset',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: widget.onPress,
            ),
          ],
        )
      ]),
    );
  }
}