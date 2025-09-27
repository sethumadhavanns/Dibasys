import 'package:dibasys/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class OtpWidget extends StatelessWidget {
  const OtpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Passcode",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
        Gap(6.h),
        Row(
          children: [
            SizedBox(
              width: 40.w,
              height: 39.h,
              child: TextField(
                maxLength: 1, // 👈 allow only 1 character
                textAlign: TextAlign.center, // 👈 horizontally center the text
                keyboardType: TextInputType.number, // 👈 numeric keyboard
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18, // adjust size as you like
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  counterText: "", // 👈 hide the character counter below
                  fillColor: kBlack,
                  filled: true,

                  // 👇 remove vertical padding so the text centers vertically
                  contentPadding: EdgeInsets.zero,

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                ),
              ),
            ),
            Gap(17.w),
            SizedBox(
              width: 40.w,
              height: 39.h,
              child: TextField(
                maxLength: 1, // 👈 allow only 1 character
                textAlign: TextAlign.center, // 👈 horizontally center the text
                keyboardType: TextInputType.number, // 👈 numeric keyboard
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18, // adjust size as you like
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  counterText: "", // 👈 hide the character counter below
                  fillColor: kBlack,
                  filled: true,

                  // 👇 remove vertical padding so the text centers vertically
                  contentPadding: EdgeInsets.zero,

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                ),
              ),
            ),
            Gap(17.w),
            SizedBox(
              width: 40.w,
              height: 39.h,
              child: TextField(
                maxLength: 1, // 👈 allow only 1 character
                textAlign: TextAlign.center, // 👈 horizontally center the text
                keyboardType: TextInputType.number, // 👈 numeric keyboard
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18, // adjust size as you like
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  counterText: "", // 👈 hide the character counter below
                  fillColor: kBlack,
                  filled: true,

                  // 👇 remove vertical padding so the text centers vertically
                  contentPadding: EdgeInsets.zero,

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                ),
              ),
            ),
            Gap(17.w),
            SizedBox(
              width: 40.w,
              height: 39.h,
              child: TextField(
                maxLength: 1, // 👈 allow only 1 character
                textAlign: TextAlign.center, // 👈 horizontally center the text
                keyboardType: TextInputType.number, // 👈 numeric keyboard
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18, // adjust size as you like
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  counterText: "", // 👈 hide the character counter below
                  fillColor: kBlack,
                  filled: true,

                  // 👇 remove vertical padding so the text centers vertically
                  contentPadding: EdgeInsets.zero,

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    borderSide: BorderSide(color: border.withOpacity(0.08)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
