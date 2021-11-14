import 'package:aplikasi_praktikum_o/screen/input_page.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_praktikum_o/constant.dart';
import '../components/reusable_widget.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  static const routeName = '/result';
  const ResultPage(
      {Key key, this.bmiResult, this.resultText, this.interpretation})
      : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    final ResultPage resultPage = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULT'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Center(
                child: Text(
                  'Your Result',
                  style: titleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableWidget(
              color: kActiveButtonColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        resultPage.resultText,
                        style: kResultTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        resultPage.bmiResult,
                        style: kBMITextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        resultPage.interpretation,
                        style: kResultTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: 'RE-CALCULATE',
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}
