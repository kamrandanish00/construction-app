import 'package:construction_app/common_widgets/custom_drawer.dart';
import 'package:construction_app/common_widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        key: _scaffoldKey,
        drawer: CustomDrawer(),
        body: Stack(
          children: [
            Column(
              children: [
                Header(),
                Column(
                  children: [
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      'ABOUT US',
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black,
                      ),
                    ),
                    Divider(
                      color: Color(0xffFF9900),
                      indent: 38.5.w,
                      endIndent: 38.5.w,
                      thickness: 1.sp,
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  height: 35.h,
                  // width: double.infinity,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 15.w,
                          ),
                          Text(
                            '|',
                            style: TextStyle(
                              fontSize: 50.sp,
                              color: Color(0xffFF9900),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    height: 4.h,
                                    margin: EdgeInsets.only(
                                        top: 10.sp, bottom: 0.sp, right: 25.sp),
                                    child: Row(
                                      children: [
                                        Text(
                                          'OUR ',
                                          style: TextStyle(
                                            fontSize: 25.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'MISSION',
                                          style: TextStyle(
                                            fontSize: 25.sp,
                                            color: Color(0xffFF9900),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  bottom: 10.sp,
                                  top: 0.sp,
                                  right: 25.sp,
                                ),
                                child: Text(
                                  '\nIn publishing and graphic design',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 50.sp,
                          right: 27.sp,
                        ),
                        child: Text(
                          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.' +
                              'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content',
                          style: TextStyle(
                            // fontSize: 14.sp,
                            color: Color(0xff707070),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 10.h,
                  thickness: 1.sp,
                  color: Colors.black,
                  indent: 50.sp,
                  endIndent: 50.sp,
                )
              ],
            ),
            Positioned(
              top: 15.sp,
              child: IconButton(
                onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                icon: Icon(Icons.menu),
              ),
            ),
          ],
        ));
  }
}
