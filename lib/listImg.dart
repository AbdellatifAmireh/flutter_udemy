import 'package:flutter/material.dart';

class ListImages extends StatelessWidget {
  static Widget imgsl = FractionallySizedBox(
    widthFactor: 0.5, //width 50%
    child: Padding(
      padding: const EdgeInsets.all(2.0), // padding 2px from all sides
      child: Image.asset(
        'images/lake.jpg',
        //height: 100,
        //width: 200,
        //width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    ),
  );
  List<Widget> listImgs = <Widget>[imgsl, imgsl, imgsl, imgsl, imgsl];
  /*@override
  void initState() {
    List<Widget> listImgs = <Widget>[imgsl, imgsl, imgsl, imgsl, imgsl];
  }*/

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: listImgs,
    );
  }
}
