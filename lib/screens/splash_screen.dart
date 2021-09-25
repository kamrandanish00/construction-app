import 'package:construction_app/screens/get_a_quote.dart';
import 'package:construction_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF9900),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 60.sp, right: 30.sp, left: 30.sp),
            child: Column(
              children: [
                Text(
                  'ZEB CONSTRUCTION',
                  style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'COMPANY',
                  style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(
                  height: 4.h,
                  color: Colors.white,
                  thickness: 1.sp,
                  indent: 15.sp,
                  endIndent: 15.sp,
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                height: 17.5.h,
                width: 35.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(70.sp)),
              ),
              Positioned(
                bottom: 1.h,
                // height: 20.h,
                right: 0.h,
                left: 0.h,
                child: Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Column(
            children: [
              Text(
                'Assuring You of Our',
                style: TextStyle(
                  fontSize: 26.sp,
                  color: Colors.white,
                ),
              ),
              Text(
                'Best Services &',
                style: TextStyle(
                  fontSize: 26.sp,
                  color: Colors.white,
                ),
              ),
              Text(
                'Solutions',
                style: TextStyle(
                  fontSize: 26.sp,
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => QuickQuote()));
            },
            child: Container(
              height: 7.h,
              width: 60.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.sp),
              ),
              child: Center(
                child: Text(
                  'Get a Quote',
                  style: TextStyle(
                    color: Color(0xffFF9900),
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => Home()));
            },
            child: Container(
              height: 7.h,
              width: 60.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.sp),
              ),
              child: Center(
                child: Text(
                  'Know More',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Color(0xffFF9900),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
