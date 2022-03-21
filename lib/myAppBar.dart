import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //automaticallyImplyLeading: false,
      //centerTitle: true,
      //iconTheme: new IconThemeData(color: Colors.amber),
      //leading: const Icon(Icons.menu),
      title: const Text('صحيفة الخليج'),
      centerTitle: true,
      /*actions: const [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],*/
      //backgroundColor: Colors.purple,
    );
  }
}
