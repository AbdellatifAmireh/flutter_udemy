import 'package:flutter/material.dart';

class SwitchAdaptive extends StatefulWidget {
  const SwitchAdaptive({Key? key}) : super(key: key);

  @override
  State<SwitchAdaptive> createState() => _SwitchAdaptiveState();
}

class _SwitchAdaptiveState extends State<SwitchAdaptive> {
  int _counter2 = 0;
  void _incrementCountertt() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter2++;
    });
  }

  bool _value = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      //width:50,
      width: double.infinity,
      //height: double.infinity,
      //alignment: Alignment.topCenter,
      margin: const EdgeInsets.all(10.0),
      //margin: const EdgeInsets.only(bottom: 50),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 0, 0),
        border: Border.all(
          color: const Color.fromARGB(221, 47, 0, 255),
          width: 5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(5.0),
        ),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            color: Color.fromARGB(255, 82, 82, 82),
            offset: Offset(1, 3),
          )
        ],
      ),
      child: Switch.adaptive(
        value: _value,
        onChanged: (newValue) => setState(() {
          _value = newValue;
          _incrementCountertt();
          //Scaffold.of(context).showSnackBar(SnackBar(content: Text('$_value')));
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                '$_value $_counter2 Lorem Ipsum is simply dummy text of',
                style: const TextStyle(
                  color: Color.fromARGB(255, 253, 0, 0),
                  //color: Colors.black87,
                  fontSize: 22,
                ),
                textAlign: TextAlign.left,
                textDirection: TextDirection.rtl,
              ),
              dismissDirection: DismissDirection.horizontal,
              duration: const Duration(seconds: 3),
              behavior: SnackBarBehavior.floating,
              //backgroundColor: Theme.of(context).primaryColor,
              //backgroundColor: Color(0xFFEFEFEF),
              //backgroundColor: Color.fromARGB(197, 117, 0, 250),
              //backgroundColor: Configs.current.COLORS_PRIMARY,
              //backgroundColor: Colors.green,
              //backgroundColor: Color.fromARGB(235, 0, 221, 7),
              backgroundColor: Colors.black87,
              //elevation: 60.0,
              action: SnackBarAction(
                label: 'Dissmiss',
                textColor: const Color.fromARGB(255, 253, 0, 0),
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
              ),
            ),
          );
        }),
      ),
    );
  }
}
