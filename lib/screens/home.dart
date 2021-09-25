import 'package:construction_app/common_widgets/custom_drawer.dart';
import 'package:construction_app/common_widgets/header.dart';
import 'package:construction_app/common_widgets/home_containers.dart';
import 'package:construction_app/screens/about_us.dart';
import 'package:construction_app/screens/contact_us.dart';
import 'package:construction_app/screens/contractors.dart';
import 'package:construction_app/screens/estimate_cost.dart';
import 'package:construction_app/screens/login.dart';
import 'package:construction_app/screens/price_list.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(),
      body: Stack(
        children: [
          Column(
            children: [
              Header(),
              SizedBox(
                height: 5.h,
              ),
              Column(
                children: [
                  Text(
                    'HOME',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                    ),
                  ),
                  Divider(
                    color: Color(0xffFF9900),
                    indent: 40.w,
                    endIndent: 40.w,
                    thickness: 1.sp,
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeContainer(
                        txt: 'Estimate Cost',
                        img: Image.asset(
                          'assets/budget.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => Contractors()));
                        },
                        child: HomeContainer(
                          txt: 'Contractors',
                          img: Image.asset(
                            'assets/contract.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) => PriceList()));
                        },
                        child: HomeContainer(
                          txt: 'Price List',
                          img: Image.asset(
                            'assets/price-list.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) => ContactUs()));
                        },
                        child: HomeContainer(
                          txt: 'Contact Us',
                          img: Image.asset(
                            'assets/Communicate.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) => AboutUs()));
                        },
                        child: HomeContainer(
                          txt: 'About Us',
                          img: Image.asset(
                            'assets/team.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) => Login()));
                        },
                        child: HomeContainer(
                          txt: 'Login',
                          img: Image.asset(
                            'assets/login.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          Positioned(
            top: 15.sp,
            child: IconButton(
              onPressed: () => scaffoldKey.currentState!.openDrawer(),
              icon: Icon(Icons.menu),
            ),
          ),
        ],
      ),
    );
  }
}

// class HomeContainer extends StatelessWidget {
//   const HomeContainer({Key? key, this.txt, this.img}) : super(key: key);
//   final String? txt;
//   final Widget? img;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 3.h),
//       height: 16.h,
//       width: 44.w,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20.sp),
//         border: Border.all(
//           color: Color(0xffFF9900),
//         ),
//       ),
//       child: Column(
//         children: [
//           Container(
//             margin: EdgeInsets.only(top: 2.h, bottom: 1.h),
//             height: 7.h,
//             width: 20.w,
//             child: img,
//           ),
//           Text(
//             txt!,
//             style: TextStyle(
//               color: Color(0xffFF9900),
//               fontSize: 17.sp,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
