import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({Key? key, this.txt, this.img}) : super(key: key);
  final String? txt;
  final Widget? img;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3.h),
      height: 16.h,
      width: 44.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.sp),
        border: Border.all(
          color: Color(0xffFF9900),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 2.h, bottom: 1.h),
            height: 7.h,
            width: 20.w,
            child: img,
          ),
          Text(
            txt!,
            style: TextStyle(
              color: Color(0xffFF9900),
              fontSize: 17.sp,
            ),
          ),
        ],
      ),
    );
  }
}
