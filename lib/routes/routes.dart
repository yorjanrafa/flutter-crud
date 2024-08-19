import 'package:firebase/screens/home/home.dart';

import 'package:firebase/screens/users/create.dart';
import 'package:flutter/widgets.dart';

class Routes {
  static const String userCreate = '/login';
  static const String userlist = '/';

  static final Map<String, WidgetBuilder> routes = {
    userCreate: (context) => const UserCreate(),
    userlist:   (context) => const HomeScreen(),
  };
}