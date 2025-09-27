import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdown extends StatefulWidget {
  final List<String>? items;
  final String? selectedValue, hintText;
  final void Function(String?)? onChanged;
  const CustomDropdown({
    this.hintText,
    super.key,
    this.items,
    this.selectedValue,
    this.onChanged,
  });

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedValue;

  final List<String> items = ["Projects", "Tasks", "Reports", "Analytics"];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.white, // 🔵 constant border color
          width: 1.w,
        ),
        borderRadius: BorderRadius.circular(12.r), // rounded corners
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: widget.selectedValue,
          hint: Text(
            widget.hintText ?? "",
            style: TextStyle(
              color: Colors.white, // 🔤 text color
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          isExpanded: true,
          dropdownColor: Colors.grey, // background of dropdown list
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.white, // ▼ arrow color
          ),
          // 👇 This style applies only to the selected item shown in the button
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
          items: widget.items?.map((value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(color: Colors.white, fontSize: 16.sp),
              ),
            );
          }).toList(),
          onChanged: widget.onChanged,
        ),
      ),
    );
  }
}
