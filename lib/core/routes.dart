import 'package:dibasys/modules/auth/view/login_view.dart';
import 'package:dibasys/modules/check_in/view/checkin_screen.dart';
import 'package:dibasys/modules/home/view/home_screen.dart';
import 'package:flutter/widgets.dart';

Map<String, Widget Function(BuildContext)> routes = {
  LoginScreen.route: (BuildContext context) => const LoginScreen(),
  HomeScreen.route: (BuildContext context) => const HomeScreen(),
  CheckinScreen.route: (BuildContext context) => const CheckinScreen(),
};
