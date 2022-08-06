import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../calculator.dart';
import '../components/reusable_card.dart';
import '../components/icon_content.dart';
import '../components/constants.dart';
import '../components/largeButton.dart';
import '../components/roundIconButton.dart';
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
            LargeButton(dataField:"CALCULATE",onTap: () {

              Calculator cal= Calculator(height:num,weight: weight);
              Navigator.push(context,MaterialPageRoute(
                builder: (context)=> result(bmi: cal.BMI(), BMIresult: cal.getResult(), Feedback: cal.getFeedback())
              ),);
            },),
          ],
        ));
  }
}

