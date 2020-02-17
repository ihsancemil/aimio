import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'add_aim_event.dart';
part 'add_aim_state.dart';

class AddAimBloc extends Bloc<AddAimEvent, AddAimState> {
  @override
  AddAimState get initialState => AddAimInitial();

  @override
  Stream<AddAimState> mapEventToState(
    AddAimEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
