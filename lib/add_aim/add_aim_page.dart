import 'package:aimio/add_aim/bloc/add_aim_bloc.dart';
import 'package:aimio/add_aim/widgets/add_aim_body.dart';
import 'package:aimio/helpers/standart_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddAimPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return StandartPage(
      body: BlocProvider(
        create: (context) => AddAimBloc(),
        child: AddAimBody(),
      ),
      navigationIndex: 0,
    );
  }
}
