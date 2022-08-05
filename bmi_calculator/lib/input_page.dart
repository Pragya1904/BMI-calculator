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
  int age = 20;
  int num = 180;
  int weight = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
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
                          selectedGen = Gender.female;
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
                        Text(
                          "cm",
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          overlayColor: Color(0x1feb1555),
                          thumbColor: Color(0xffeb1555),
                          trackHeight: 1,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30)),
                      child: Slider(
                          value: num.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double newVal) {
                            setState(() {
                              num = newVal.round();
                            });
                          }),
                    ),
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
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: kTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kSliderCardStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                    icons: FontAwesomeIcons.minus,
                                    OnPress: () {
                                      setState(() {
                                        weight--;
                                      });
                                    }),
                                SizedBox(
                                  width: 10,
                                ),
                                RoundIconButton(
                                    icons: FontAwesomeIcons.plus,
                                    OnPress: () {
                                      setState(() {
                                        weight++;
                                      });
                                    }),
                              ],
                            )
                          ],
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                        colour: kActiveCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: kTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kSliderCardStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                    icons: FontAwesomeIcons.minus,
                                    OnPress: () {
                                      setState(() {
                                        age--;
                                      });
                                    }),
                                SizedBox(
                                  width: 10,
                                ),
                                RoundIconButton(
                                    icons: FontAwesomeIcons.plus,
                                    OnPress: () {
                                      setState(() {
                                        age++;
                                      });
                                    }),
                              ],
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'results');
              },
              child: Container(
                child: Center(
                  child: Text(
                    "CALCULATE",
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
        ));
  }
}

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
