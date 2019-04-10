import 'package:flextab/choice.dart';
import 'package:flutter/material.dart';

class MyTabBarView extends StatelessWidget {
  //final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TabBarView(
          children: choices.map((Choice choice) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ChoiceCard(choice: choice),
            );
          }).toList(),
        ),
      ),
    );
  }
}
