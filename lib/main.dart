// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flextab/choice.dart';
import 'package:flextab/drawer.dart';
import 'package:flutter/material.dart';

class TabbedAppBarSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          drawer: MyDrawer(),
          // drawer: Drawer(
          //   // Add a ListView to the drawer. This ensures the user can scroll
          //   // through the options in the Drawer if there isn't enough vertical
          //   // space to fit everything.
          //   child: ListView(
          //     // Important: Remove any padding from the ListView.
          //     padding: EdgeInsets.zero,
          //     children: <Widget>[
          //       DrawerHeader(
          //         child: Text('Drawer Header'),
          //         decoration: BoxDecoration(
          //           color: Colors.blue,
          //         ),
          //       ),
          //       ListTile(
          //         title: Text('Item 1'),
          //         onTap: () {
          //           // Update the state of the app
          //           // ...
          //           // Then close the drawer
          //           Navigator.pop(context);
          //         },
          //       ),
          //       ListTile(
          //         title: Text('Item 2'),
          //         onTap: () {
          //           // Update the state of the app
          //           // ...
          //           // Then close the drawer
          //           Navigator.pop(context);
          //         },
          //       ),
          //     ],
          //   ),
          // ),
          appBar: AppBar(
            title: const Text('Tabbed AppBar'),
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map((Choice choice) {
                return Tab(
                  text: choice.title,
                  icon: Icon(choice.icon),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ChoiceCard(choice: choice),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

// class Choice {
//   const Choice({this.title, this.icon});

//   final String title;
//   final IconData icon;
// }

// const List<Choice> choices = const <Choice>[
//   const Choice(title: 'CAR', icon: Icons.directions_car),
//   const Choice(title: 'BICYCLE', icon: Icons.directions_bike),
//   const Choice(title: 'BOAT', icon: Icons.directions_boat),
//   const Choice(title: 'BUS', icon: Icons.directions_bus),
//   const Choice(title: 'TRAIN', icon: Icons.directions_railway),
//   const Choice(title: 'WALK', icon: Icons.directions_walk),
// ];

// class ChoiceCard extends StatelessWidget {
//   const ChoiceCard({Key key, this.choice}) : super(key: key);

//   final Choice choice;

//   @override
//   Widget build(BuildContext context) {
//     final TextStyle textStyle = Theme.of(context).textTheme.display1;
//     return Card(
//       color: Colors.white,
//       child: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Icon(choice.icon, size: 128.0, color: textStyle.color),
//             Text(choice.title, style: textStyle),
//           ],
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(TabbedAppBarSample());
}
