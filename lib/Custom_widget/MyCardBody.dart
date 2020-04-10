import 'package:bmi_calc2/themes.dart';
import 'package:flutter/material.dart';

class MyCardBody extends StatelessWidget {
  const MyCardBody({
    Key key, this.icons, this.gender
  }) : super(key: key);
  final IconData icons;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        //Icon(icons),
         Icon(
          icons,
           size: 90,
          color: Colors.yellow,
        ),
        Text(
          gender,
          style: setTextStyle(color: Colors.yellow, size: 23),
        ),
      ],
    );
  }
}
