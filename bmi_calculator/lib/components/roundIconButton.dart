import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icons, this.OnPress});
  final icons;
  final OnPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: OnPress,
      fillColor: Color(0xff8d8e98),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 45, height: 45),
      child: Icon(icons),
    );
  }
}
