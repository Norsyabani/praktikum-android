import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BmiCalculator(),
      ),
    );

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Test'),
            Image.network('https://source.unsplash.com/500x100/?coding'),
            Image.asset('assets/img/1.jpg'),
          ],
        ),
      ),
    );
  }
}
