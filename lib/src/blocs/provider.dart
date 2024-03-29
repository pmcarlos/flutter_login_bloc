import 'package:flutter/material.dart';
import 'package:flutter_login_bloc/src/blocs/bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();
  Provider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static Bloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}
