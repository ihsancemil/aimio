import 'package:aimio/add_aim/bloc/add_aim_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddAimBody extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController startController = TextEditingController();
  final TextEditingController endController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: titleController,
            decoration: InputDecoration(labelText: "Title"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: descriptionController,
            decoration: InputDecoration(labelText: "Description"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: startController,
            decoration: InputDecoration(labelText: "Start"),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              WhitelistingTextInputFormatter.digitsOnly
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: endController,
            decoration: InputDecoration(labelText: "End"),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              WhitelistingTextInputFormatter.digitsOnly
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: RaisedButton(
            onPressed: () => BlocProvider.of<AddAimBloc>(context).add(
              AddAimSaveEvent(
                titleController.text, 
                descriptionController.text, 
                double.parse(startController.text), 
                double.parse(endController.text), 
                null, 
                context,
              ),
            ),
          ),
        )
      ],
    );
  }
}