import 'package:construction_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientaion, deviceType) {
      return MaterialApp(
        title: 'Contruction App',
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      );
    });
  }
}
