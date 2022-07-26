import 'package:flutter/material.dart';
import 'constants.dart';
class ColumnCard extends StatelessWidget {
  ColumnCard({@required this.iconn,this.txt});
  final iconn;
  final txt;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconn, size: 80),
        SizedBox(
          height: 15,
        ),
        Text(
          txt,
          style: kTextStyle,
        ),
      ],
    );
  }
}