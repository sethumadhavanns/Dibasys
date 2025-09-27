import 'package:dibasys/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class TextfieldWidget extends StatefulWidget {
  const TextfieldWidget({super.key});

  @override
  State<TextfieldWidget> createState() => _TextfieldWidgetState();
}

class _TextfieldWidgetState extends State<TextfieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Phone Number",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
        Gap(6.h),
        TextField(
          keyboardType: TextInputType.number, // only numeric keyboard
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly, // only digits allowed
            LengthLimitingTextInputFormatter(12), // maximum 12 digits
          ],
          decoration: InputDecoration(
            fillColor: kBlack,
            filled: true,
            // 👇 Add padding inside the field
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 14.h,
            ),

            // 👇 Define a single consistent border for all states
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.r), // rounded corners
              borderSide: BorderSide(
                color: border.withOpacity(0.08),
              ), // constant color
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.r),
              borderSide: BorderSide(
                color: border.withOpacity(0.08),
              ), // same color
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.r),
              borderSide: BorderSide(
                color: border.withOpacity(0.08),
              ), // same color
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.r),
              borderSide: BorderSide(
                color: border.withOpacity(0.08),
              ), // same color
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.r),
              borderSide: BorderSide(
                color: border.withOpacity(0.08),
              ), // same color
            ),
          ),
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
