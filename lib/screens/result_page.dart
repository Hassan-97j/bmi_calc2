//import 'package:bmi_calc2/input_page.dart';
import 'package:bmi_calc2/themes.dart';
import 'package:flutter/material.dart';
import 'Custom_widget/Mycard.dart';
//import 'Custom_widget/MyCardBody.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.resultBMI,this.resultText,this.resultComments});

  final String resultBMI;
  final String resultText;
  final String resultComments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                  child: Center(
                    child: Text(
            'Your Result',
            style: setTextStyle(size: 50, weight: FontWeight.bold),
          ),
                  ))),
          Expanded(
            flex: 5,
            child: MyCard(
              colors: inactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:
              <Widget> [
                Text(resultText,style: setTextStyle(size: 20, weight: FontWeight.bold),),
                Text(resultBMI,style: setTextStyle(size: 100, weight: FontWeight.bold),),
                Text(resultComments,textAlign: TextAlign.center ,style: setTextStyle(size: 20, weight: FontWeight.bold),),
              ]),
            )),
                    InkWell(
          onTap: () {
            Navigator.pop(context);
             //    MaterialPageRoute(builder: (context) => ResultPage()));
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            color: Colors.yellow,
            child: Text('Re-Calculate',
                style: setTextStyle(color: Colors.black, size: 24),
                textAlign: TextAlign.center),
            //margin: EdgeInsets.only(top: 10),
            height: 50,
            width: double.infinity,
          ),
        ),
        ],
      ),
    );
  }
}
