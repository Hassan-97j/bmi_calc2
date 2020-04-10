//import 'dart:ffi';

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key key, this.colors, this.cardChild,this.onpressed,})
      : super(key: key);

  final Color colors;
  final Widget cardChild;
  final  Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
                      child: 
                      Container(
            
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.all(15.0),
        child: cardChild,
        decoration:
              BoxDecoration(color: colors, borderRadius: BorderRadius.circular(10)),
      ),
         // ),
    );
  }
}