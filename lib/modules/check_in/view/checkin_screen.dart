import 'package:dibasys/core/asset_constant.dart';
import 'package:dibasys/core/colors.dart';
import 'package:dibasys/core/widgets/common_appbar.dart';
import 'package:dibasys/core/widgets/common_button.dart';
import 'package:dibasys/modules/check_in/controller/check_in_controller.dart';
import 'package:dibasys/modules/check_in/widgets/dropDown_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class CheckinScreen extends StatelessWidget {
  static const route = '/check_in_screen';
  const CheckinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundBlack,
      body: SafeArea(
        child: Consumer<CheckInController>(
          builder: (context, checkCtr, child) => Column(
            children: [
              CommomAppbar(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Gap(22.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 31.w),
                child: Column(
                  children: [
                    Text(
                      "Check-in ",
                      style: TextStyle(
                        color: textWhite,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Gap(12.h),
                    Text(
                      "Select Check-in Type",
                      style: TextStyle(
                        color: textWhite,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Gap(28.h),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(top: 34.h, bottom: 50.h),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white.withOpacity(0.5),
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: BoxBorder.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            height: 110.h,
                            width: 120.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 34.h,
                                  width: 28.w,
                                  child: SvgPicture.asset(worker),
                                ),
                                Text(
                                  "Worker",
                                  style: TextStyle(
                                    color: textWhite,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Gap(40.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: CustomDropdown(
                              selectedValue: checkCtr.selectedTaskValue,
                              onChanged: (value) {
                                checkCtr.toggleSelecetdValue(true, value ?? "");
                              },
                              hintText: "Select a Task",
                              items: ["Projects", "Assignment", "Dead Line"],
                            ),
                          ),
                          Gap(33.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: CustomDropdown(
                              onChanged: (value) {
                                checkCtr.toggleSelecetdValue(
                                  false,
                                  value ?? "",
                                );
                              },
                              selectedValue: checkCtr.selectedPlaceValue,
                              hintText: "Select a Place",
                              items: ["Gate", "Office", "Outside"],
                            ),
                          ),
                          Gap(19.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Row(
                              children: [
                                Text(
                                  "Select Work Type",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // ✅ NEW ROW with 2 checkboxes
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Gap(5.w),
                              Theme(
                                data: Theme.of(context).copyWith(
                                  checkboxTheme: CheckboxThemeData(
                                    shape:
                                        const CircleBorder(), // ✅ Make it circular
                                    side: BorderSide(
                                      color: Colors
                                          .white, // ✅ border color when unchecked
                                      width: 1.w, // ✅ border thickness
                                    ),
                                    fillColor: WidgetStateProperty.resolveWith((
                                      states,
                                    ) {
                                      if (states.contains(
                                        WidgetState.selected,
                                      )) {
                                        return Colors
                                            .white; // ✅ fill color when checked
                                      }
                                      return Colors
                                          .transparent; // ✅ background when unchecked
                                    }),
                                    checkColor: WidgetStateProperty.all(
                                      Colors.black,
                                    ), // ✅ tick color
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                ),
                                child: Transform.scale(
                                  scale:
                                      1, // ✅ Adjust size here (1.5 ~ 24px → 36px)
                                  child: Checkbox(
                                    value: checkCtr.selectedOption == "option1",
                                    onChanged: (_) =>
                                        checkCtr.toggleOption("option1"),
                                  ),
                                ),
                              ),
                              Text(
                                "Budget",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                ),
                              ),
                              Gap(30.w),
                              Theme(
                                data: Theme.of(context).copyWith(
                                  checkboxTheme: CheckboxThemeData(
                                    shape: const CircleBorder(),
                                    side: BorderSide(
                                      color: Colors.white,
                                      width: 1.w,
                                    ),
                                    fillColor: WidgetStateProperty.resolveWith((
                                      states,
                                    ) {
                                      if (states.contains(
                                        WidgetState.selected,
                                      )) {
                                        return Colors.white;
                                      }
                                      return Colors.transparent;
                                    }),
                                    checkColor: WidgetStateProperty.all(
                                      Colors.black,
                                    ),
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                ),
                                child: Transform.scale(
                                  scale: 1, // ✅ same size for second checkbox
                                  child: Checkbox(
                                    value: checkCtr.selectedOption == "option2",
                                    onChanged: (_) =>
                                        checkCtr.toggleOption("option2"),
                                  ),
                                ),
                              ),
                              Text(
                                "Issue",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                ),
                              ),
                            ],
                          ),
                          Gap(49.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: CommonButton(
                              text: "Check-in",
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
