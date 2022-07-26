import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
const bottomHeight = 80.0;
const bottomContainerColor = Color(0xffeb1555);
const activeCardColor = Color(0xff1d1e33);
const inactiveCardColor = Color(0xff111328);

enum Gender {female,male}
class bmi extends StatefulWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  Color  maleCardColor=inactiveCardColor;
  Color femaleCardColor=inactiveCardColor;
  var selectedGen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('bmi calci'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      onPress:(){
                        setState(() {
                          selectedGen=Gender.male;
                        });
                      },
                        colour: selectedGen==Gender.male?activeCardColor:inactiveCardColor,
                        cardChild: ColumnCard(
                          iconn: FontAwesomeIcons.mars,
                          txt:"MALE",
                        ),
                      ),
                    ),
                  Expanded(
                    flex: 1,
                    child:  ReusableCard(
                      onPress:(){
                        setState(() {
                          selectedGen=Gender.male;
                        });
                      },
                        colour: selectedGen==Gender.female?activeCardColor:inactiveCardColor,
                          cardChild: ColumnCard(
                            iconn: FontAwesomeIcons.venus,
                            txt:"FEMALE",
                          ),
                      ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ReusableCard(
                colour: activeCardColor,
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomHeight,
            ),
          ],
        ));
  }
}


