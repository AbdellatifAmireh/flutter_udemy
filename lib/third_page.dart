import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: ListView(children: allListWidgets()),
      body: getListView(),
    );
  }

  List<String> getListElements() {
    var items = List<String>.generate(10000, (counter) => "Item $counter");
    return items;
  }

  Widget getListView() {
    var listItems = getListElements();
    var listView = ListView.builder(
        itemCount: listItems.length, // important to remove the error
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.arrow_right),
            title: Text(listItems[index]),
            onTap: () {
              var snackbar =
                  SnackBar(content: Text("${listItems[index]} was tapped"));
              Scaffold.of(context).showSnackBar(snackbar);
              debugPrint('${listItems[index]} was tapped');
            },
          );
        });
    return listView;
  }

// slow list view for small list
  allListWidgets() {
    var listViewSS = <Widget>[];
    for (var i = 0; i <= 100000; i++) {
      listViewSS.add(ListTile(title: Text('Item $i')));
    }
    return listViewSS;
  }
}
