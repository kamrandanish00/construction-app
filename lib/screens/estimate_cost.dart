import 'package:construction_app/common_widgets/custom_drawer.dart';
import 'package:construction_app/common_widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EstimateCost extends StatelessWidget {
  const EstimateCost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Header(),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'ESTIMATE COST',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Color(0xffFF9900),
                  indent: 25.w,
                  endIndent: 25.w,
                  thickness: 1.sp,
                ),
                Container(
                  margin: EdgeInsets.only(top: 1.5.h),
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  height: 53.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    color: Color(0xffFF9900),
                    borderRadius: BorderRadius.circular(25.sp),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // SizedBox(
                      //   height: 3.h,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 6.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25.sp),
                            ),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: 'Length',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            height: 6.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: 'width',
                                border: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                      // SizedBox(
                      //   height: 3.h,
                      // ),
                      Container(
                        height: 6.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Select Type',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 3.h,
                      // ),
                      Container(
                        height: 15.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Description',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        height: 6.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Select Category',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.only(bottom: 2.h),
                        height: 6.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          color: Color(0xff31D161),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Total Estimate',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                CircleAvatar(
                  radius: 3.h,
                  backgroundColor: Color(0xff31D161),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30.sp,
                  ),
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
        ),
      ),
    );
  }
}
