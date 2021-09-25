import 'package:construction_app/common_widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Column(
              children: [
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  'REGISTER',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Color(0xffFF9900),
                  indent: 38.w,
                  endIndent: 38.w,
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
                          offset: Offset(0, 3), // changes position of shadow
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
                            padding: EdgeInsets.symmetric(horizontal: 20.sp),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Contractor Title',
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
                            padding: EdgeInsets.symmetric(horizontal: 20.sp),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'Username',
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
                            padding: EdgeInsets.symmetric(horizontal: 20.sp),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: 'Contact',
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
                            padding: EdgeInsets.symmetric(horizontal: 20.sp),
                            child: TextFormField(
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
                            padding: EdgeInsets.symmetric(horizontal: 20.sp),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Address',
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
                            padding: EdgeInsets.symmetric(horizontal: 20.sp),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Password',
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
                                'LOGIN',
                                style: TextStyle(
                                  color: Color(0xffFF9900),
                                  fontSize: 8.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
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
                                'SIGN UP',
                                style: TextStyle(
                                  color: Color(0xffFF9900),
                                  fontSize: 8.sp,
                                ),
                              ),
                            )
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
      ),
    );
  }
}
