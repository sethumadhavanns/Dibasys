import 'package:dibasys/modules/home/controller/home_controller.dart';
import 'package:dibasys/modules/home/widgets/bottom_nav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, homeCtr, child) => Container(
        // margin: EdgeInsets.symmetric(horizontal: 1.w),
        height: 80.h,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.r),
            topRight: Radius.circular(15.r),
            bottomLeft: Radius.zero,
            bottomRight: Radius.zero,
          ),
          border: Border(
            top: BorderSide(
              color: Colors.white, // border color
              width: 1.w, // border thickness
            ),
            left: BorderSide(
              color: Colors.white, // border color
              width: 1.w, // border thickness
            ),
            right: BorderSide(
              color: Colors.white, // border color
              width: 1.w, // border thickness
            ),

            bottom: BorderSide.none, // no bottom border
          ),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavItem(
              icon: Icons.home,
              label: 'Home',
              isActive: homeCtr.selecetdIndex == 0,
              onTap: () {
                homeCtr.toggleSelecetedIndex(0);
              },
            ),
            BottomNavItem(
              onTap: () {
                homeCtr.toggleSelecetedIndex(1);
              },
              icon: Icons.assignment,
              label: 'Activities',
              isActive: homeCtr.selecetdIndex == 1,
            ),
            BottomNavItem(
              icon: Icons.work,
              label: 'Jobs',
              isActive: homeCtr.selecetdIndex == 2,
              onTap: () {
                homeCtr.toggleSelecetedIndex(2);
              },
            ),
            BottomNavItem(
              icon: Icons.notifications,
              label: 'Notification',
              isActive: homeCtr.selecetdIndex == 3,
              onTap: () {
                homeCtr.toggleSelecetedIndex(3);
              },
            ),
          ],
        ),
      ),
    );
  }
}
