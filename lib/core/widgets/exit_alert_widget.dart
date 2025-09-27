import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dibasys/core/colors.dart';

class ExitDialogWidget extends StatelessWidget {
  const ExitDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: backGroundBlack,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.white, // 👈 border color
          width: 0.5.w,
        ),
        borderRadius: BorderRadius.circular(15.r),
      ),
      title: Text(
        "Exit App",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      content: Text(
        "Are you sure you want to exit the app?",
        style: TextStyle(
          color: Colors.white70,
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text(
            "No",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          child: Text(
            "Yes",
            style: TextStyle(
              color: textOrange,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
