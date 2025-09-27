import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavItem extends StatelessWidget {
  final IconData? icon;
  final void Function()? onTap;
  final String? label;
  final bool? isActive;
  const BottomNavItem({
    super.key,
    this.icon,
    this.isActive,
    this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: (isActive ?? false) ? Color(0xFFED8936) : Colors.white,
            size: 24,
          ),
          SizedBox(height: 4),
          Text(
            label ?? "",
            style: TextStyle(
              color: (isActive ?? false) ? Color(0xFFED8936) : Colors.white,
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
