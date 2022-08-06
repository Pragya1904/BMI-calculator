import 'package:flutter/material.dart';
import 'constants.dart';
class LargeButton extends StatelessWidget {
  LargeButton({@required this.dataField,@required this.onTap});
  final dataField;
  final onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            dataField,
            style: kLargeButton,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomHeight,
      ),
    );
  }
}
