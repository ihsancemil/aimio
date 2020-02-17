import 'dart:async';

import 'package:aimio/repository/aim_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'aims_event.dart';
part 'aims_state.dart';

class AimsBloc extends Bloc<AimsEvent, AimsState> {
  @override
  AimsState get initialState => AimsFetching();

  @override
  Stream<AimsState> mapEventToState(
    AimsEvent event,
  ) async* {
    if (event is AimsFetchEvent) {
      yield AimsFetching();
      var aims = await AimModel.getAims();
      yield AimsFetched(aims);
    }
  }
}