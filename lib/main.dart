//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_udemy/secondPage.dart';
import 'package:flutter_udemy/sliderAdaptive.dart';
import 'package:flutter_udemy/switchAdaptive.dart';
import 'package:flutter_udemy/switchListTile.dart';

import 'imagesClass.dart';
import 'listImg.dart';
import 'myAppBar.dart';
import 'myBottomNavigationBar.dart';
import 'myDrawer.dart';
import 'text_scaffold_key.dart';
//import 'package:flutter/cupertino.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application. ok thanks
  @override
  Widget build(BuildContext context) {
    //---------------CupertinoApp START-------------------- no
    /* return CupertinoApp(
      title: 'Flutter Demo',
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Sample Code'),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const CupertinoButton(
                onPressed: null,
                child: Text('Disabled'),
              ),
              const SizedBox(height: 30),
              const CupertinoButton.filled(
                onPressed: null,
                child: Text('Disabled'),
              ),
              const SizedBox(height: 30),
              CupertinoButton(
                onPressed: () {},
                child: const Text('Enabled'),
              ),
              const SizedBox(height: 30),
              CupertinoButton.filled(
                onPressed: () {},
                child: const Text('Enabled'),
              ),
              CupertinoSwitch(
                value: true,
                onChanged: (bool value) {},
              ),
              const CupertinoActivityIndicator(
                  animating: true, color: Colors.red, radius: 15),
              const CircularProgressIndicator.adaptive(),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false, // Elimina la flanja de Debug en la App
    ); */
    //---------------CupertinoApp END--------------------
    return MaterialApp(
      // Arabic RTL config START ss
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("ar", "AR"), //  RTL locales
      ],
      locale: const Locale("ar", "AR"),
      // Arabic RTL config END
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        //brightness: Brightness.dark,
        //brightness: Brightness.light,
        //primaryColor: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const MyHomePage(title: 'Flutter Demo Home Page'),
        // '/second': (_) => SecondPage(title: 'Flutter Demo Home Page'),
      },
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isSelectCheckBox = false;
  int selectedIndex = 0;
  bool _valueCupertino = true;
  List screens = [ScreenMovies(), ScreenReleases(), ScreenCuriosities()];
  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });

    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SecondRoute()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      //resizeToAvoidBottomInset: false,
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      drawer: const MyDrawer(),
      appBar: const MyAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondRoute()),
          );
        },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      //bottomNavigationBar: My_BottomNavigationBarState(),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      //body: const SwitchAdaptive(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //_widgetOptions.elementAt(_selectedIndex),
            ElevatedButton(
              child: const Text('صحيفة الخليج',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.w900,
                  )),
              onPressed: () {
                //Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
            ),
            ElevatedButton(
              child: const Text('صحيفة الخليج',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.w200,
                    fontStyle: FontStyle.italic,
                    //letterSpacing: 88,
                    //wordSpacing: 88,
                  )),
              onPressed: () {
                //Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
            ),
            ElevatedButton(
              child: const Text('صحيفة الخليج',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Almarai',
                  )),
              onPressed: () {
                //Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
            ),
            RaisedButton(
              child: Text("ddddd"),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("sdffasf"),
                      );
                    });
              },
            ),
            Icon(
              Icons.add_business,
            ),
            ElevatedButton(
              child: const Text('صحيفة الخليج',
                  style: TextStyle(
                    fontSize: 20,
                    //fontFamily: 'Almarai',
                  )),
              onPressed: () {
                //Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
            ),
            const SwitchAdaptive(),
            const SliderAdaptive(),
            const MySwitchListTile(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.stretch,

                children: const [
                  CircularProgressIndicator.adaptive(),
                  CircularProgressIndicator.adaptive(),
                  CircularProgressIndicator.adaptive(),
                  //LinearProgressIndicator(),
                  CupertinoActivityIndicator(
                      animating: true, color: Colors.red, radius: 15),
                  CupertinoActivityIndicator(animating: true, radius: 15),
                  CupertinoActivityIndicator(animating: true, radius: 15),
                  CupertinoActivityIndicator(animating: true, radius: 15),
                ],
              ),
            ),
            const CircularProgressIndicator.adaptive(),
            const SizedBox(height: 30),
            const LinearProgressIndicator(
              minHeight: 10,
              semanticsLabel: "test",
            ),
            const SizedBox(height: 30),
            CupertinoButton.filled(
              onPressed: () {},
              child: const Text('Enabled'),
            ),
            CupertinoSwitch(
              value: _valueCupertino,
              onChanged: (bool valueCupertino) {
                setState(() {
                  _valueCupertino = valueCupertino;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  Icons.adaptive.share,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                const Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                ),
                const Icon(
                  Icons.beach_access,
                  color: Colors.blue,
                  size: 36.0,
                ),
              ],
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.adaptive.share,
                  //size: 50.0,
                ),
                /*  Icon(
                  Icons.adaptive.share,
                ), */
                Icon(
                  Icons.adaptive.share,
                ),
                Icon(
                  Icons.adaptive.share,
                ),
              ],
            ),
            Column(
              children: const <Widget>[
                Text("sdafdsfss"),
              ],
            ),
            const MyImages(),
            //SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Image.asset(
                    "images/dummy.png",
                    //width: 100,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    "images/dummy.png",
                    //width: 100,
                  ),
                  /* child: Image.network(
                    "https://dummyimage.com/600x400/000/fff",
                    //width: 300,
                  ), */
                ),
                Expanded(
                  child: Image.asset(
                    "images/dummy.png",
                    //width: 100,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    const Icon(Icons.star, color: Colors.black),
                    const Icon(Icons.star, color: Colors.black),
                  ],
                ),
                const Text(
                  '170 Reviews',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.5,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const Text(
              'Hello World',
              style: TextStyle(
                fontSize: 32,
                color: Colors.black87,
              ),
            ),
            screens.elementAt(selectedIndex),
            ListImages(),
            Checkbox(
              value: isSelectCheckBox,
              onChanged: (change) {
                setState(() {
                  isSelectCheckBox = change!;
                });
              },
            ),
            CheckboxListTile(
              //enableFeedback: true,
              activeColor: Colors.red,
              title: const Text('test'),
              subtitle: const Text('test'),
              //dense: true,
              value: isSelectCheckBox,
              onChanged: (change) {
                setState(() {
                  isSelectCheckBox = change!;
                });
              },
            ),
            const Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Text(
                  'Child widget 1',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
            const Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Text(
                  'Child widget 1',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 100),
            ElevatedButton(
              child: const Text('Open route'),
              onPressed: () {
                final snackBar = const SnackBar(
                    content: const Text('Are you talkin\' to me?'));
                //_scaffoldKey.currentState?.showSnackBar(snackBar);
                //Scaffold.of(context).showSnackBar(snackBar);
                //_scaffoldKey.currentState?.openEndDrawer();
                _scaffoldKey.currentState?.openDrawer();
              },
            ),
            const SizedBox(height: 100),
            const SizedBox(height: 100),
            const SizedBox(height: 100),
            TextScaffoldKey(
              scaffoldKey: _scaffoldKey,
              nums: selectedIndex,
            ),
            const SizedBox(height: 100),
            TextFormField(
              keyboardType: TextInputType.datetime,
              decoration: const InputDecoration(
                labelText: "tests",
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

class ScreenMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: const Text("ScreenMovies"),
    );
  }
}

class ScreenReleases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("ScreenReleases"),
    );
  }
}

class ScreenCuriosities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: const Text("ScreenCuriosities"),
    );
  }
}
