import 'package:aimio/aims/bloc/aims_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AimsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AimsBloc, AimsState>(builder: (context, state) {
      if (state is AimsFetching) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return ListView.builder(
          itemCount: (state as AimsFetched).aims.length,
          itemBuilder: (context, i) {
            return Card(
              child: Column(children: <Widget>[
                  Icon(
                    IconData(
                      (state as AimsFetched).aims[i].iconModel.codePoint,
                      fontFamily: (state as AimsFetched).aims[i].iconModel.fontFamily,
                      fontPackage: (state as AimsFetched).aims[i].iconModel.fontPackage,
                      matchTextDirection: (state as AimsFetched).aims[i].iconModel.matchTextDirection,
                    ),
                  ),
                  Text((state as AimsFetched).aims[i].title),
                ],
              ),
            );
          },
        );
      }
    });
  }
}
