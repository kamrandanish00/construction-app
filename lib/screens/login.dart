import 'package:construction_app/common_widgets/custom_drawer.dart';
import 'package:construction_app/common_widgets/header.dart';
import 'package:construction_app/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                      height: 8.h,
                    ),
                    Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black,
                      ),
                    ),
                    Divider(
                      color: Color(0xffFF9900),
                      indent: 42.w,
                      endIndent: 42.w,
                      thickness: 1.sp,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(top: 70.sp),
                      height: 30.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        color: Color(0xffFF9900),
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => Register()));
                            },
                            child: Text(
                              'Register For Contractor',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.sp,
                              ),
                            ),
                          ),
                          Text(
                            '|',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                            ),
                          ),
                          TextButton(
                              onPressed: null,
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                ),
                              ))
                        ],
                      ),
                    ),
                    Positioned(
                      left: 11.sp,
                      right: 11.sp,
                      child: Container(
                        height: 35.h,
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                    hintText: 'Email',
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
                                    'Sign In as Contractor',
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
                                    'Sign In as Admin',
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
