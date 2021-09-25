import 'package:construction_app/common_widgets/custom_drawer.dart';
import 'package:construction_app/common_widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class QuickQuote extends StatefulWidget {
  const QuickQuote({Key? key}) : super(key: key);

  @override
  _QuickQuoteState createState() => _QuickQuoteState();
}

class _QuickQuoteState extends State<QuickQuote> {
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
                Column(
                  children: [
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'QUICK QUOTE',
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black,
                      ),
                    ),
                    Divider(
                      color: Color(0xffFF9900),
                      indent: 35.w,
                      endIndent: 35.w,
                      thickness: 1.sp,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Stack(
                  // alignment: Alignment.bottomCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 185.sp),
                      height: 25.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        color: Color(0xffFF9900),
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                    ),
                    Positioned(
                      // height: 60.h,
                      left: 11.sp,
                      right: 11.sp,
                      child: Container(
                        height: 55.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.sp),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 6.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                color: Color(0xffE1F4FF),
                                borderRadius: BorderRadius.circular(15.sp),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 20.sp),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Your Name',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            //password field
                            Container(
                              height: 6.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                color: Color(0xffE1F4FF),
                                borderRadius: BorderRadius.circular(15.sp),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 20.sp),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 6.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                color: Color(0xffE1F4FF),
                                borderRadius: BorderRadius.circular(15.sp),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 20.sp),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Subject',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 6.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                color: Color(0xffE1F4FF),
                                borderRadius: BorderRadius.circular(15.sp),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 20.sp),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Message',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 4.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffFF9900),
                                    ),
                                    borderRadius: BorderRadius.circular(20.sp),
                                  ),
                                  child: Text(
                                    'SEND MESSAGE',
                                    style: TextStyle(
                                      color: Color(0xffFF9900),
                                      fontSize: 8.sp,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
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
