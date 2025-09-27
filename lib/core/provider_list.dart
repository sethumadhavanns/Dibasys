import 'package:dibasys/modules/auth/controller/auth_controller.dart';
import 'package:dibasys/modules/check_in/controller/check_in_controller.dart';
import 'package:dibasys/modules/home/controller/home_controller.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providerList = [
  ChangeNotifierProvider(create: (_) => AuthController()),
  ChangeNotifierProvider(create: (_) => CheckInController()),
  ChangeNotifierProvider(create: (_) => HomeController()),
];
