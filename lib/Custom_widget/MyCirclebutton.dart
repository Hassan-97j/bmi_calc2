import 'package:flutter/material.dart';

class MycircleButton extends StatelessWidget {
  const MycircleButton(
      {Key key, this.icon, this.onPressed, this.bgColor = Colors.white})
      : super(key: key);

  final Widget icon;
  final void Function() onPressed;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: new CircleBorder(),
      elevation: 2.0,
      backgroundColor: bgColor,
      //padding: const EdgeInsets.all(4.0),
      onPressed: onPressed,
        child: icon,
    );
  }
}
