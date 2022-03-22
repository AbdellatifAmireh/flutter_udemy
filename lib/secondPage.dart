import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dart:math';

import 'myBottomNavigationBar.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  int selectedIndex = 2;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });

    /*if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SecondRoute()),
      );
    }*/
  }

  /*final _data = <WordPair>[];
  @override
  void initState() {
    super.initState();
    _data.addAll(generateWordPairs().take(20));
  }
  */
  Future _refreshLocalGallery() async {
    await Future.delayed(Duration(seconds: 3));
    listWidget.clear();
    //listWidget.addAll(generateWordPairs().take(20));
    listWidget.addAll(listWidget2);
    //setState(() {listWidget.addAll(listWidget2);});
  }

  /*  Future _refreshLocalGallery() async {
    await Future.delayed(Duration(seconds: 3));
    print('refreshing stocks...');
  } */
  var listWidget2 = <Widget>[
    Container(
      height: 50,
      color: Colors.amber[600],
      child: Center(child: Text("Entry 2 ${Random().nextInt(100)}")),
    ),
  ];

  var listWidget = <Widget>[
    const ListTile(
      leading: Icon(Icons.abc_outlined),
      title: Text("ListTile title"),
      subtitle: Text("ListTile subtitle"),
      trailing: Icon(Icons.abc_outlined),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('Entry A')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('Entry A')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('Entry A')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('Entry A')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('Entry A')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('Entry A')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('Entry A')),
    ),
    Container(
      height: 50,
      color: Colors.amber[500],
      child: const Center(child: Text('Entry B')),
    ),
    Container(
      height: 50,
      color: Colors.amber[100],
      child: const Center(child: Text('Entry C')),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      body: Column(
        children: [
          Expanded(
            child: RefreshIndicator(
              color: Colors.yellow,
              backgroundColor: Colors.red,
              onRefresh: _refreshLocalGallery,
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  for (var item in listWidget) item,
                  //listWidget.forEach((element) => element),
                ],
              ),
            ),
          ),
          Container(
            child: Hero(
              tag: 'test123',
              child: Image.asset(
                'images/lake.jpg',
                fit: BoxFit.cover,
              ),
            ),
            margin: const EdgeInsets.only(bottom: 10, top: 10),
            //margin: const EdgeInsets.all(10.0),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate back to first route when tapped.
              Navigator.pop(context);
            },
            child: const Text('Go back!'),
          ),
        ],
      ),
    );
  }
}
