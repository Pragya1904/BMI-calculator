import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/largeButton.dart';

class result extends StatelessWidget {
  result({required this.bmi,required this.BMIresult,required this.Feedback});
  final  String bmi;
  final String BMIresult;
  final String Feedback;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Result",
                  style: kTitleStyle,
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children:  [
                    Text(
                    bmi,
                      style: kResultTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      BMIresult,
                      style: kBMIStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      Feedback,
                      style: kBodyText,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            LargeButton(
              dataField: "RE-CALCULATE",
              onTap: () {
                Navigator.pushNamed(context, "input");
              },
            ),
          ],
        ),
      ),
    );
  }
}
