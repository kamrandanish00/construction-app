import 'package:construction_app/screens/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

enum MobileVerificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}

class LoginMobileNumber extends StatefulWidget {
  const LoginMobileNumber({Key? key}) : super(key: key);

  @override
  _LoginMobileNumberState createState() => _LoginMobileNumberState();
}

class _LoginMobileNumberState extends State<LoginMobileNumber> {
  MobileVerificationState currentState =
      MobileVerificationState.SHOW_MOBILE_FORM_STATE;

  final phoneController = TextEditingController();
  final otpController = TextEditingController();

  bool showLoading = false;

  FirebaseAuth _auth = FirebaseAuth.instance;

  String? verificationId;

  void signInWithPhoneAuthCredential(phoneAuthCredential) async {
    setState(() {
      showLoading = true;
    });

    try {
      final authCredential =
          await _auth.signInWithCredential(phoneAuthCredential);

      setState(() {
        showLoading = false;
      });

      if (authCredential.user != null) {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) => Home()));
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        showLoading = false;
      });

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message!)));
    }
  }

  getMobileFormWidget(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
          child: TextFormField(
            controller: phoneController,
            decoration: InputDecoration(
                hintText: 'e.g: 0123 4567890',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                labelText: 'Phone Nmuber',
                labelStyle: TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
        ElevatedButton(
          onPressed: () async {
            setState(() {
              showLoading = true;
            });

            await _auth.verifyPhoneNumber(
              phoneNumber: phoneController.text,
              verificationCompleted: (phoneAuthCredential) async {
                setState(() {
                  showLoading = false;
                });
                // signInWithPhoneAuthCredential(phoneAuthCredential);
              },
              verificationFailed: (verificationFailed) async {
                setState(() {
                  showLoading = false;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(verificationFailed.message!)));
              },
              codeSent: (verificationId, resendingToken) async {
                setState(() {
                  showLoading = false;
                  currentState = MobileVerificationState.SHOW_OTP_FORM_STATE;
                  this.verificationId = verificationId;
                });
              },
              codeAutoRetrievalTimeout: (verificationId) async {},
            );
          },
          child: Text(
            'Send OTP',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  getOtpFormWidget(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
          child: TextFormField(
            controller: otpController,
            decoration: InputDecoration(
              hintText: 'Enter OTP',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              labelText: 'OTP',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () async {
            final phoneAuthCredential = PhoneAuthProvider.credential(
                verificationId: verificationId!, smsCode: otpController.text);

            signInWithPhoneAuthCredential(phoneAuthCredential);
          },
          child: Text(
            'VERIFTY',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xffFF9900),
      body: showLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : currentState == MobileVerificationState.SHOW_MOBILE_FORM_STATE
              ? getMobileFormWidget(context)
              : getOtpFormWidget(context),
    );
  }
}
