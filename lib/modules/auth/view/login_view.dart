import 'dart:io';

import 'package:dibasys/core/colors.dart';
import 'package:dibasys/core/functions/global_functions.dart';
import 'package:dibasys/core/widgets/common_appbar.dart';
import 'package:dibasys/core/widgets/common_button.dart';
import 'package:dibasys/modules/auth/controller/auth_controller.dart';
import 'package:dibasys/modules/auth/widgets/otp_widget.dart';
import 'package:dibasys/modules/auth/widgets/textfield_widget.dart';
import 'package:dibasys/modules/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  static const route = '/login_screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final shouldExit = await showExitDialog(context);
        if (shouldExit) {
          exit(0); // exits the app
        }
        return false; // <- always return a bool to prevent the warning
      },
      child: Scaffold(
        backgroundColor: backGroundBlack,
        body: SafeArea(
          child: Column(
            children: [
              CommomAppbar(
                onPressed: () async {
                  final shouldExit = await showExitDialog(context);
                  if (shouldExit) {
                    exit(0);
                  }
                },
              ),

              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 61.w),
                    child: Consumer<AuthController>(
                      builder: (context, authCtr, child) => Column(
                        mainAxisSize: MainAxisSize.min, // shrink to content
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                              color: textOrange,
                              fontSize: 30.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Gap(14.h),
                          Text(
                            "Welcome back to your account",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Gap(43.h),
                          Row(children: [Expanded(child: TextfieldWidget())]),
                          Gap(21.h),
                          OtpWidget(),
                          Gap(19.h),

                          // Checkbox + "Remember me" and "Forgot Passcode?"
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Theme(
                                    data: Theme.of(context).copyWith(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            4.r,
                                          ),
                                        ),
                                        side: BorderSide(
                                          color: checkBoxGrey,
                                          width: 0.7.w,
                                        ),
                                        fillColor:
                                            WidgetStateProperty.resolveWith<
                                              Color?
                                            >((states) {
                                              if (states.contains(
                                                WidgetState.selected,
                                              )) {
                                                return Colors.green.withOpacity(
                                                  0.5,
                                                );
                                              }
                                              return backGroundBlack;
                                            }),
                                        checkColor: WidgetStateProperty.all(
                                          Colors.white,
                                        ),
                                      ),
                                    ),
                                    child: Transform.scale(
                                      scale: 1,
                                      child: Checkbox(
                                        value: authCtr.isChecked,
                                        onChanged: (value) {
                                          authCtr.toggleCheckBox();
                                        },
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        visualDensity: VisualDensity.compact,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Remember me",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Forgot Passcode?",
                                style: TextStyle(
                                  color: textOrange,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w300,
                                  decoration: TextDecoration.underline,
                                  decorationColor: textOrange,
                                  decorationThickness: 1.2,
                                ),
                              ),
                            ],
                          ),
                          Gap(52.h),
                          CommonButton(
                            text: "Login",
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  transitionDuration: const Duration(
                                    milliseconds: 600,
                                  ), // animation speed
                                  pageBuilder:
                                      (
                                        context,
                                        animation,
                                        secondaryAnimation,
                                      ) => HomeScreen(),
                                  transitionsBuilder:
                                      (
                                        context,
                                        animation,
                                        secondaryAnimation,
                                        child,
                                      ) {
                                        // Slide from bottom + fade
                                        const begin = Offset(0.0, 1.0);
                                        const end = Offset.zero;
                                        final tween = Tween(
                                          begin: begin,
                                          end: end,
                                        ).chain(CurveTween(curve: Curves.ease));
                                        final offsetAnimation = animation.drive(
                                          tween,
                                        );

                                        final fadeAnimation = CurvedAnimation(
                                          parent: animation,
                                          curve: Curves.easeInOut,
                                        );

                                        return SlideTransition(
                                          position: offsetAnimation,
                                          child: FadeTransition(
                                            opacity: fadeAnimation,
                                            child: child,
                                          ),
                                        );
                                      },
                                ),
                              );
                            },
                          ),

                          Gap(10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have account?",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Gap(20.w),
                              Text(
                                "Register",
                                style: TextStyle(
                                  color: textOrange,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
