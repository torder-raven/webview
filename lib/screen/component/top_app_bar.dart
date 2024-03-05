import 'package:flutter/material.dart';

typedef AppBarListener = void Function(IconAction);

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBarListener listener;

  TopAppBar({required this.title, required this.listener});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: Colors.orange,
      actions: [
        IconButton(
          onPressed: () {
            listener(IconAction.Home);
          },
          icon: Icon(
            Icons.home,
          ),
        ),
        IconButton(
          onPressed: () {
            listener(IconAction.Search);
          },
          icon: Icon(
            Icons.search,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

enum IconAction { Home, Search }
