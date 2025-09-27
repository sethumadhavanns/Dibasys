import 'package:dibasys/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CradWidget extends StatelessWidget {
  const CradWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 23.w),
      width: double.infinity,
      // margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.only(top: 12.h, bottom: 24.h),
      decoration: BoxDecoration(
        color: kBrown,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Text(
            'Working Hours',
            style: TextStyle(
              color: textGrey,
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 11.h),
          Text(
            '00:00:00 Hrs',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.sp,
              fontWeight: FontWeight.w400,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}
