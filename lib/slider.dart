import 'package:barslider/piechart.dart';
import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  var _value = 0.5;

  void _onValueChanged(double value) {
    print(value);
    setState(() {
      _value = value;
    });
    chartState.setState(() {
      chartState.seriesList = MyChart.createData(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _value,
      onChanged: _onValueChanged,
      min: 0.0, 
      max: 1.0,
    );
  }
}
