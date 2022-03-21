import 'package:flutter/material.dart';

class TextScaffoldKey extends StatefulWidget {
  final scaffoldKey;
  final nums;
  TextScaffoldKey({Key? key, this.scaffoldKey, this.nums}) : super(key: key);

  @override
  State<TextScaffoldKey> createState() => _TextScaffoldKeyState();
}

class _TextScaffoldKeyState extends State<TextScaffoldKey> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            SnackBar snackBar = SnackBar(
                content: Text('Are you talkin\' to me? ${widget.nums}'));
            //widget.scaffoldKey.currentState?.showSnackBar(snackBar);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            //Scaffold.of(context).showSnackBar(snackBar);
            //_scaffoldKey.currentState?.openEndDrawer();
            widget.scaffoldKey.currentState?.openDrawer();
          },
        ),
        Text(
          'test ${widget.nums} ${widget.scaffoldKey.currentState}',
        ),
      ],
    );
  }
}
