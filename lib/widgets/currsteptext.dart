import 'package:flutter/material.dart';
import 'package:intervalprogressbar/intervalprogressbar.dart';

class CurrStepText extends StatelessWidget {
  const CurrStepText({Key key, this.stepName, this.stepNum, this.stepMax})
      : super(key: key);

  final String stepName;
  final int stepNum;
  final int stepMax;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 10.0),
          Container(
            //width: 300.0,
            height: 60.0,
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            decoration: BoxDecoration(
              color: Colors.lightBlue[50],
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Current step:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      ' $stepName',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                IntervalProgressBar(
                    direction: IntervalProgressDirection.horizontal,
                    max: stepMax,
                    progress: stepNum,
                    intervalSize: 3,
                    size: Size(280, 20),
                    highlightColor: Colors.blue,
                    defaultColor: Colors.grey,
                    intervalColor: Colors.transparent,
                    intervalHighlightColor: Colors.transparent,
                    reverse: false,
                    radius: 15),
              ],
            ),
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
