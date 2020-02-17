import 'package:flutter/material.dart';

class AimNavigator {

  final BuildContext context;

  AimNavigator(this.context);

  Future<T> push<T>(Widget Function(BuildContext) builder) {
    return Navigator.of(context).push(MaterialPageRoute(builder: builder));
  }

  bool pop<T extends Object>(T result) {
    return Navigator.of(context).pop<T>(result);
  }
}