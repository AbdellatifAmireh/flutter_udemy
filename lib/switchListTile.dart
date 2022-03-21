import 'package:flutter/material.dart';

class MySwitchListTile extends StatefulWidget {
  const MySwitchListTile({Key? key}) : super(key: key);

  @override
  State<MySwitchListTile> createState() => _MySwitchListTileState();
}

class _MySwitchListTileState extends State<MySwitchListTile> {
  bool _SliderValue = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SwitchListTile.adaptive(
            value: _SliderValue,
            title: Text('test'),
            onChanged: (newValues) {
              setState(
                () {
                  _SliderValue = newValues;
                },
              );
            },
          ),
          SwitchListTile.adaptive(
            value: _SliderValue,
            title: Text('test2'),
            onChanged: (newValues) {
              setState(
                () {
                  _SliderValue = newValues;
                },
              );
            },
          ),
          SwitchListTile.adaptive(
            value: _SliderValue,
            title: Text('test3'),
            onChanged: (newValues) {
              setState(
                () {
                  _SliderValue = newValues;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
