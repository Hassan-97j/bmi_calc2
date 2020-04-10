import 'package:bmi_calc2/screens/input_page.dart';
import 'package:bmi_calc2/themes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp()); 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BmI CalCulAtOr',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0F25),
        scaffoldBackgroundColor: Color(0xFF0A0F25),
        appBarTheme: AppBarTheme(
          color: primaryColor,
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.white,
              fontSize: 24,
            )
          )
        )
        ),
        
      home: MyPage(),
    );
  }
}

