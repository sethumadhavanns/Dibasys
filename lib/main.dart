import 'package:dibasys/core/provider_list.dart';
import 'package:dibasys/core/routes.dart';
import 'package:dibasys/modules/auth/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 736),
      builder: (context, child) {
        return MultiProvider(
          providers: providerList,
          child: MaterialApp(
            theme: ThemeData(fontFamily: 'DM Sans'),
            routes: routes,
            debugShowCheckedModeBanner: false,
            home: LoginScreen(),
          ),
        );
      },
    );
  }
}
