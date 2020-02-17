import 'package:flutter/material.dart';

class AimNavigator {
  Future<T> push<T>(BuildContext context, Widget Function(BuildContext) builder) {
    return Navigator.of(context).push(MaterialPageRoute(builder: builder));
  }

  bool pop<T extends Object>(BuildContext context, T result) {
    return Navigator.of(context).pop<T>(result);
  }
}