import 'package:bmi_calc2/Custom_widget/MyCirclebutton.dart';
import 'package:bmi_calc2/themes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Custom_widget/Mycard.dart';
import 'result_page.dart';
import 'Custom_widget/MyCardBody.dart';
import 'calclations.dart';

final activeCardColor = Color(0xff1d1e33);
final inactiveCardColor = Color(0xff111328);
enum Sex {
  male,
  female,
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  Sex selectedSex;
  double height = 5.9;
  int weight = 60;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI'), centerTitle: true),
      body: Column(children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
             Expanded(
                  child: MyCard(
                    onpressed: () {
                      setState(() {
                        selectedSex = Sex.male;
                      });
                    },
                    colors: selectedSex == Sex.male
                        ? inactiveCardColor
                        : activeCardColor,
                    cardChild: MyCardBody(
                      icons: FontAwesomeIcons.mars,
                      gender: 'male',
                    ),
                  ),
                ),
              
              Expanded(
                child: MyCard(
                  onpressed: () {
                    setState(() {
                      selectedSex = Sex.female;
                    });
                  },
                  colors: selectedSex == Sex.female
                      ? inactiveCardColor
                      : activeCardColor,
                  cardChild: MyCardBody(
                    icons: FontAwesomeIcons.venus,
                    gender: 'female',
                  ),
                ),
              ),
            ],  
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: MyCard(
                      colors: activeCardColor,
                      cardChild: Column(
                          
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Height',
                              style:
                                  setTextStyle(color: primaryTextColor, size: 48),
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: <Widget>[
                                  Text(
                                    height.toStringAsFixed(2),
                                    style: setTextStyle(
                                        color: primaryTextColor, size: 28),
                                  ),
                                  Text(
                                    'feet',
                                    style: setTextStyle(
                                        color: primaryTextColor, size: 16),
                                  )
                                ]),
                            Slider(
                                value: height.toDouble(),
                                activeColor: Colors.yellow[50],
                                inactiveColor: primaryTextColor,
                                min: 4.0,
                                max: 7.0,
                                onChanged: (double newValue) {
                                  setState(() {
                                    height = newValue.toDouble();
                                  });

                                })
                          ]))),
            ],
          ),
        ),
        Expanded(
          child: Row(children: <Widget>[
            Expanded(
              child: MyCard(
                colors: inactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Weight',
                        style: setTextStyle(color: primaryTextColor, size: 28)),
                    Text(weight.toString(),
                        style: setTextStyle(color: primaryTextColor, size: 24)),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          MycircleButton(
                            bgColor: primaryColor,
                            icon: Icon(
                                 FontAwesomeIcons.plus,
                                 color: primaryTextColor,
                               ),
                               onPressed: (){setState(() {
                                 weight++;
                               });},
                          
                          ),
                          MycircleButton(
                            bgColor: primaryColor,
                            icon: Icon(
                                 FontAwesomeIcons.minus,
                                 color: primaryTextColor,
                               ),
                               onPressed: (){setState(() {
                                 weight--;
                               });},
                          
                          ),
                        ])
                  ],
                ),
              ),
            ),
            Expanded(
              child: MyCard(
                colors: inactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('age',
                        style: setTextStyle(color: primaryTextColor, size: 28)),
                    Text(age.toString(),
                        style: setTextStyle(color: primaryTextColor, size: 24)),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                         MycircleButton(
                            bgColor: primaryColor,
                            icon: Icon(
                                 FontAwesomeIcons.plus,
                                 color: primaryTextColor,
                               ),
                               onPressed: (){setState(() {
                                 age++;
                               });},
                          
                          ),
                           MycircleButton(
                            bgColor: primaryColor,
                            icon: Icon(
                                 FontAwesomeIcons.minus,
                                 color: primaryTextColor,
                               ),
                               onPressed: (){setState(() {
                                 age--;
                               });},
                          
                          ),
                        ])
                  ],
                ),
              ),
            ),
          ]),
        ),
        InkWell(
          onTap: () {
            Calc calculate = Calc(height: height, weight: weight);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ResultPage(
                  resultBMI: calculate.calcBMI(),
                  resultText: calculate.getResult(),
                  resultComments: calculate.getComments(),
                )));

                
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            color: primaryTextColor,
            child: Text('Calculate',
                style: setTextStyle(color: Colors.black, size: 24),
                textAlign: TextAlign.center),
            height: 50,
            width: double.infinity,
          ),
        ),
      ]),
    );
  }
}
