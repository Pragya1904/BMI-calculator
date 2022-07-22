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
        body: Center(
          child: Container(
            child: Text("body"),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
        )
    );
  }
}
