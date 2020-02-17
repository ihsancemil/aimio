part of 'aims_bloc.dart';

abstract class AimsEvent extends Equatable {
  const AimsEvent();
}

class AimsFetchEvent extends AimsEvent {
  @override
  List<Object> get props => [];
}