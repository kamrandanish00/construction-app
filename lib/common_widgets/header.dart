import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffFF9900),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'ZEB CONSTRUCTION',
            style: TextStyle(
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            'COMPANY',
            style: TextStyle(
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
