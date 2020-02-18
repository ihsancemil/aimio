import 'package:aimio/aims/widgets/aims_body.dart';
import 'package:aimio/helpers/standart_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/aims_bloc.dart';

class AimsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandartPage(
      navigationIndex: 1,
      body: BlocProvider(
        create: (BuildContext context) => AimsBloc()..add(AimsFetchEvent()),
        child: AimsBody(),
      ),
    );
  }
}
