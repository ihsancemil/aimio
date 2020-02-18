part of 'add_aim_bloc.dart';

abstract class AddAimEvent extends Equatable {
  const AddAimEvent();
}

class AddAimSaveEvent extends AddAimEvent {
  final BuildContext context;
  final String title;
  final String description;
  final double start;
  final double end;
  final IconData iconData;

  const AddAimSaveEvent(
      this.title, this.description, this.start, this.end, this.iconData, this.context);

  @override
  List<Object> get props =>
      [this.title, this.description, this.start, this.end, this.iconData, this.context];
}

class AddAimSelectIconEvent extends AddAimEvent {
  final BuildContext context;

  AddAimSelectIconEvent(this.context);
  
  @override
  List<Object> get props => [this.context];
}