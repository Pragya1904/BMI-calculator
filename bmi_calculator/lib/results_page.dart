import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class result extends StatefulWidget {
  const result({Key? key}) : super(key: key);

  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Result"),
        centerTitle: true,
      ),
      body:Column(
        children: [
          ReusableCard(colour: kActiveCardColor,),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'results');
            },
            child: Container(
              child: Center(
                child: Text(
                  "RE-CALCULATE",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomHeight,
            ),
          ),
        ],
      ),
    );
  }
}
