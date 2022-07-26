import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender { female, male }

class bmi extends StatefulWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;
  var selectedGen;
  int num = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('bmi calci'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGen = Gender.male;
                        });
                      },
                      colour: selectedGen == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: ColumnCard(
                        iconn: FontAwesomeIcons.mars,
                        txt: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGen = Gender.male;
                        });
                      },
                      colour: selectedGen == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: ColumnCard(
                        iconn: FontAwesomeIcons.venus,
                        txt: "FEMALE",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: kTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          num.toString(),
                          style: kSliderCardStyle,
                        ),
                        Text("cm",),
                      ],
                    ),
                    Slider(value: num.toDouble(),min: 120.0,max: 220.0,
                        activeColor:Color(0xffeb1555) ,
                        inactiveColor: Color(0xff1d1e33),
                        onChanged: (double newVal){
                            setState(() {
                              num=newVal.round();
                            });
                    }),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      colour: kActiveCardColor,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      colour: kActiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomHeight,
            ),
          ],
        ));
  }
}
