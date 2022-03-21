import 'package:flutter/material.dart';

class SliderAdaptive extends StatefulWidget {
  const SliderAdaptive({Key? key}) : super(key: key);

  @override
  State<SliderAdaptive> createState() => _SliderAdaptiveState();
}

class _SliderAdaptiveState extends State<SliderAdaptive> {
  double _SliderValue = 0.5;
  void _sliderValueChanged(newValues) {
    setState(() {
      _SliderValue = newValues;
    });
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('content')));
  }

  @override
  Widget build(BuildContext context) {
    return Slider.adaptive(
      value: _SliderValue,
      min: 0.5,
      max: 1,
      divisions: 5,
      thumbColor: Colors.green,
      activeColor: Colors.purple,
      inactiveColor: Colors.amber,
      label: _SliderValue.toString(),
      onChanged: _sliderValueChanged,
      /* onChanged: (newValues) { setState(() { _SliderValue = newValues; },); },*/
    );
  }
}
