import 'package:flutter/material.dart';
import 'package:toothidentapp/data/decisions.dart';
import 'package:toothidentapp/models/decisionstep.dart';
import 'package:toothidentapp/constans.dart';
import 'package:toothidentapp/tools/tools.dart';
import 'package:toothidentapp/widgets/currsteptext.dart';

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

  String getCurrentStepName(int index) {
    String id = _historySteps[index];
    var tmp = steps.firstWhere((i) => i.id == id);
    return tmp.stepName;
  }

  int getCurrentStepNum(int index) {
    String id = _historySteps[index];
    var tmp = steps.firstWhere((i) => i.id == id);
    return tmp.stepNum;
  }

  int getCurrentStepMax(int index) {
    String id = _historySteps[index];
    var tmp = steps.firstWhere((i) => i.id == id);
    return tmp.stepMax;
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
        title: Text(
          tmp.choices[i]['text'],
          style: TextStyle(fontSize: 15.0),
        ),
        subtitle: tmp.choices[i].containsKey('subtext')
            ? Text(
                tmp.choices[i]['subtext'],
                style: TextStyle(
                  fontSize: 11.0,
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
          leading: IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              showAppAbout(context);
            },
          ),
        ),
        body: isQuestion(_currentStep)
            ? Decision(
                choice: _historyChoices[_currentStep],
                currentStep: getCurrentTitle(_currentStep),
                stepName: getCurrentStepName(_currentStep),
                stepNum: getCurrentStepNum(_currentStep),
                stepMax: getCurrentStepMax(_currentStep),
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
    this.stepName,
    this.stepNum,
    this.stepMax,
    this.choiceList,
    this.onPressBack,
    this.onPressNext,
  }) : super(key: key);

  final int choice;
  final String currentStep;
  final String stepName;
  final int stepNum;
  final int stepMax;
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
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CurrStepText(
                      stepName: widget.stepName,
                      stepNum: widget.stepNum,
                      stepMax: widget.stepMax),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.0, vertical: 8.0),
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
                          widget.currentStep,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Column(
                          children: widget.choiceList,
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'Back',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: widget.onPressBack,
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
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
    return Column(
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.25),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    widget.resultStep.title,
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                DataTable(columns: [
                  DataColumn(label: Text('', style: kDataColumnStyle)),
                  DataColumn(label: Text('', style: kDataColumnStyle)),
                ], rows: [
                  DataRow(cells: [
                    DataCell(Text('Type:', style: kDataCellStyle)),
                    DataCell(Text(widget.resultStep.toothType,
                        style: kDataCellStyle)),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Dentition:', style: kDataCellStyle)),
                    DataCell(Text(widget.resultStep.toothDentition,
                        style: kDataCellStyle)),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Arcade:', style: kDataCellStyle)),
                    DataCell(Text(widget.resultStep.toothArcade,
                        style: kDataCellStyle)),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Position:', style: kDataCellStyle)),
                    DataCell(Text(widget.resultStep.toothPosition,
                        style: kDataCellStyle)),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Side:', style: kDataCellStyle)),
                    DataCell(Text(widget.resultStep.toothSide,
                        style: kDataCellStyle)),
                  ]),
                ]),
                SizedBox(
                  height: 25.0,
                )
              ]),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'Reset',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: widget.onPress,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
