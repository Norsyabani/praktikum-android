import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 70.0;
const activeCard = Color(0xFF1D1E33);
const buttonContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
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
                child: ReusableWidget(
                  color: activeCard,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 50.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Male',
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableWidget(
                  color: activeCard,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.venus,
                        size: 50.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Female',
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
                      ),
                    ],
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
                  color: activeCard,
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
                  color: activeCard,
                ),
              ),
              Expanded(
                child: ReusableWidget(
                  color: activeCard,
                ),
              ),
            ],
          )),

          //Tombol Calculate
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: buttonContainerColor,
                  ),
                  height: bottomContainerHeight,
                  width: double.infinity,
                  child: Text('CALCULATE'),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ReusableWidget extends StatelessWidget {
  ReusableWidget({required this.color, this.cardChild});

  Color color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color, //Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 300.0,
      width: 179.0,
    );
  }
}
