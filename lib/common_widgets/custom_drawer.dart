import 'package:construction_app/screens/authentication.dart';
import 'package:construction_app/screens/login_mobile_number.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffFF9900),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ZEB CONSTRUCTION',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.white,
                      )),
                  Text(
                    'COMPANY',
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.room),
            title: Text('Address'),
          ),
          ListTile(
            leading: Icon(Icons.sync),
            title: Text('Sync Database'),
          ),
          InkWell(
            onTap: () async {
              FirebaseAuth.instance.signOut().then(
                    (value) => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => LoginMobileNumber(),
                      ),
                    ),
                  );
            },
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ),
          SizedBox(
            height: 37.h,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Version 1.0.0',
                style: TextStyle(
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Your #1 source for all the crossplatform devs',
                style: TextStyle(
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text('by Kamran Ahmad',
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w500,
                  )),
              Text('Privacy policy | Terms & Conditions'),
            ],
          )
        ],
      ),
    );
  }
}
