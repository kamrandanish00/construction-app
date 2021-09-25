import 'dart:async';

import 'package:construction_app/screens/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final auth = FirebaseAuth.instance;
  User? user;
  Timer? timer;

  @override
  void initState() {
    user = auth.currentUser;
    user!.sendEmailVerification();

    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      checkEmailVerified();
    });

    super.initState();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF9900),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'An Email has been send to ${user!.email} please verify.',
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Once the email is verified, you will be automatically prompted to the Home Screen.',
              style: TextStyle(
                fontSize: 11.sp,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

  Future<void> checkEmailVerified() async {
    user = auth.currentUser;
    await user!.reload();
    if (user!.emailVerified) {
      timer!.cancel();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (ctx) => SplashScreen(),
        ),
      );
    }
  }
}
