import 'package:construction_app/common_widgets/custom_drawer.dart';
import 'package:construction_app/common_widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

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
                    height: 5.h,
                  ),
                  Text(
                    'CONTACT US',
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
              Container(
                alignment: Alignment.center,
                height: 6.h,
                width: 65.w,
                decoration: BoxDecoration(
                  color: Color(0xffFF9900),
                  borderRadius: BorderRadius.circular(10.sp),
                ),
                child: Text(
                  'KEEP IN TOUCH',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                height: 10.h,
                width: 65.w,
                child: Text(
                  "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xff707070),
                  ),
                  maxLines: 7,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              ContactUsContainer(
                icon: Icons.phone_in_talk,
                txt: '+92 3159353572',
              ),
              ContactUsContainer(
                icon: Icons.room,
                txt: 'Hayatabad Peshawar, KPK',
              ),
              ContactUsContainer(
                icon: Icons.email,
                txt: 'sk315935@gmail.com',
              ),
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
    );
  }
}

class ContactUsContainer extends StatelessWidget {
  final IconData? icon;
  final String? txt;
  const ContactUsContainer({Key? key, this.icon, this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.sp),
      height: 7.h,
      width: 75.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xffFF9900),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: Color(0xffFF9900),
            size: 30.sp,
          ),
          SizedBox(
            width: 1.w,
          ),
          Text(
            txt!,
            style: TextStyle(
              color: Color(0xffFF9900),
              fontSize: 16.sp,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
