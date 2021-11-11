import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_widget.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);
const buttonContainerColor = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;

  void updateColor(Gender selectedColor) {
    if (selectedColor == Gender.male) {
      if (maleCardColor == inActiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inActiveCardColor;
      } else {
        maleCardColor = inActiveCardColor;
      }
    }

    if (selectedColor == Gender.female) {
      if (femaleCardColor == inActiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inActiveCardColor;
      } else {
        femaleCardColor = inActiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Color(0xFF0A0E21),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //Jenis Kelamin
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    print('This is Male');
                    setState(() {
                      updateColor(Gender.male);
                    });
                  },
                  child: ReusableWidget(
                    color: maleCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    print('This is Female');
                    setState(() {
                      updateColor(Gender.female);
                    });
                  },
                  child: ReusableWidget(
                    color: femaleCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ),
            ],
          )),

          //Tinggi
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableWidget(
                  color: inActiveCardColor,
                ),
              ),
            ],
          )),

          //Berat dan Umur
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableWidget(
                  color: inActiveCardColor,
                ),
              ),
              Expanded(
                child: ReusableWidget(
                  color: inActiveCardColor,
                ),
              ),
            ],
          )),

          //Tombol Calculate
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 15.0),
            decoration: BoxDecoration(
              color: buttonContainerColor,
            ),
            height: bottomContainerHeight,
            width: double.infinity,
            child: Text('CALCULATE'),
          ),
        ],
      ),
    );
  }
}
