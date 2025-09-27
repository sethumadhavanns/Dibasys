import 'dart:io';

import 'package:dibasys/core/asset_constant.dart';
import 'package:dibasys/core/colors.dart';
import 'package:dibasys/core/functions/global_functions.dart';
import 'package:dibasys/core/widgets/common_button.dart';
import 'package:dibasys/modules/check_in/view/checkin_screen.dart';
import 'package:dibasys/modules/home/controller/home_controller.dart';
import 'package:dibasys/modules/home/widgets/bottom_nav_bar.dart';
import 'package:dibasys/modules/home/widgets/hour_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const route = '/home_screen';
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        bottomNavigationBar: BottomNavBar(),
        backgroundColor: backGroundBlack,
        body: Consumer<HomeController>(
          builder: (context, homeCtr, child) => homeCtr.selecetdIndex == 0
              ? Column(
                  children: [
                    // Main Content Card
                    Container(
                      padding: EdgeInsets.only(bottom: 70.h),
                      // height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        //  textOrange.withOpacity(0.9),
                        // gradient: LinearGradient(
                        //   begin: Alignment.topCenter,
                        //   end: Alignment.bottomCenter,
                        //   // colors: [Colors.white, textOrange, Colors.white, textOrange],
                        // ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24.r),
                          bottomRight: Radius.circular(24.r),
                        ),
                      ),
                      child: SafeArea(
                        child: Column(
                          children: [
                            // Header
                            Padding(
                              padding: EdgeInsetsGeometry.symmetric(
                                horizontal: 22.w,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: 34.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.menu,
                                      color: Color(0xFF4A5568),
                                      size: 28.sp,
                                    ),
                                    Icon(
                                      Icons.file_download_outlined,
                                      color: Color(0xFF4A5568),
                                      size: 28.sp,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Gap(31.h),
                            // Greeting and Date
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Hey Jose',
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w500,
                                          color: textBlack,
                                        ),
                                      ),
                                      SizedBox(height: 3.h),
                                      Text(
                                        "Tuesday 17 June, 2025",
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          color: textBlack,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Profile Avatar
                                  CircleAvatar(
                                    radius: 25.r,
                                    backgroundImage: AssetImage(
                                      profile, // Replace with your actual asset path (e.g., 'assets/images/profile.png')
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 34.h),
                            CradWidget(),
                            // Working Hours Card
                            SizedBox(height: 20.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 23.w),
                              child: CommonButton(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      transitionDuration: const Duration(
                                        milliseconds: 600,
                                      ), // slower transition
                                      reverseTransitionDuration: const Duration(
                                        milliseconds: 600,
                                      ),
                                      pageBuilder:
                                          (
                                            context,
                                            animation,
                                            secondaryAnimation,
                                          ) => CheckinScreen(),
                                      transitionsBuilder:
                                          (
                                            context,
                                            animation,
                                            secondaryAnimation,
                                            child,
                                          ) {
                                            const begin = Offset(0.0, 1.0);
                                            const end = Offset.zero;
                                            const curve = Curves.ease;

                                            final tween = Tween(
                                              begin: begin,
                                              end: end,
                                            ).chain(CurveTween(curve: curve));
                                            final offsetAnimation = animation
                                                .drive(tween);

                                            return SlideTransition(
                                              position: offsetAnimation,
                                              child: child,
                                            );
                                          },
                                    ),
                                  );
                                },
                                text: "Manual Check-in",
                              ),
                            ),
                            // Check-in Button

                            // Spacer(),
                          ],
                        ),
                      ),
                    ),

                    // Bottom Navigation
                  ],
                )
              : homeCtr.selecetdIndex == 1
              ? SizedBox()
              : homeCtr.selecetdIndex == 2
              ? SizedBox()
              : SizedBox(),
        ),
      ),
    );
  }
}
