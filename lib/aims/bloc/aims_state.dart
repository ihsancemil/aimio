part of 'aims_bloc.dart';

abstract class AimsState extends Equatable {
  const AimsState();
}

class AimsFetching extends AimsState {
  @override
  List<Object> get props => [];
}

class AimsFetched extends AimsState {
  final List<AimModel> aims;

  AimsFetched(this.aims);
  
  @override
  List<Object> get props => [this.aims];
}