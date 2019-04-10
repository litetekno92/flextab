import 'package:flextab/choice.dart';
import 'package:flutter/material.dart';


class MyTabBar extends StatelessWidget implements PreferredSizeWidget {
  //final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: 
       TabBar(
              isScrollable: true,
              tabs: choices.map((Choice choice) {
                return Tab(
                  text: choice.title,
                  icon: Icon(choice.icon),
                );
              }).toList(),
            ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}