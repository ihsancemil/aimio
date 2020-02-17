import 'package:aimio/add_aim/add_aim_page.dart';
import 'package:aimio/home/home_page.dart';
import 'package:aimio/navigator/aim_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class StandartPage extends StatelessWidget {
  final AppBar appBar;
  final Widget body;
  final BottomNavigationBar bottomNavigationBar;
  final int navigationIndex;

  const StandartPage(
      {Key key, this.appBar, this.body, this.bottomNavigationBar, this.navigationIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: this.appBar,
      body: this.body,
      bottomNavigationBar: this.bottomNavigationBar != null
          ? this.bottomNavigationBar
          : BottomNavigationBar(
            currentIndex: navigationIndex,
              onTap: (int tabIndex) {
                if (tabIndex == navigationIndex)
                  return;
                switch (tabIndex) {
                  case 0:
                    AimNavigator(context).push((context) => AddAimPage());
                    break;
                  case 1:
                    AimNavigator(context).push((context) => HomePage());
                    break;
                  default:
                    break;
                }
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(MaterialIcons.add_circle_outline),
                  title: Text("Add")
                ),
                BottomNavigationBarItem(
                  icon: Icon(MaterialIcons.home),
                  title: Text("Home")
                )
              ],
            ),
    );
  }
}
