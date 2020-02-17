import 'package:aimio/helpers/standart_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandartPage(
      body: Center(
        child: Text("Home"),
      ),
      navigationIndex: 1,
    );
  }
}
