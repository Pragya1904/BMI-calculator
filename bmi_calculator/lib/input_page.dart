import 'package:flutter/material.dart';
class bmi extends StatefulWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
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
                    child: reusableCard(),
                  ),
                  Expanded(
                    flex: 1,
                    child: reusableCard(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: reusableCard(),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: reusableCard(),
                  ),
                  Expanded(
                    flex: 1,
                    child:reusableCard(),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}

class reusableCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xff4f486b),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
