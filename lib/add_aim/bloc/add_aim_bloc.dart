import 'dart:async';

import 'package:aimio/navigator/aim_navigator.dart';
import 'package:aimio/repository/aim_model.dart';
import 'package:aimio/select_icon/select_icon_page.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'add_aim_event.dart';

class AddAimBloc extends Bloc<AddAimEvent, IconData> {
  @override
  IconData get initialState => null;

  @override
  Stream<IconData> mapEventToState(
    AddAimEvent event,
  ) async* {
    if (event is AddAimSelectIconEvent) {
      var result = await AimNavigator(event.context).push((context) => SelectIconPage());
      if (result != null) {
        yield result;
      }
    }
    else if (event is AddAimSaveEvent) {
      var aim = AimModel(title: event.title, definition: event.description, start: event.start, end: event.end);
      var result = await AimModel.newAim(aim);
      if (result > 0) {
        AimNavigator(event.context).pop(result);
      }
    }
  }
}
