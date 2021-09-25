import 'package:construction_app/common_widgets/custom_drawer.dart';
import 'package:construction_app/common_widgets/header.dart';
import 'package:construction_app/common_widgets/home_containers.dart';
import 'package:construction_app/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

final scaffoldKey = GlobalKey<ScaffoldState>();

class Contractors extends StatefulWidget {
  const Contractors({Key? key}) : super(key: key);

  @override
  _ContractorsState createState() => _ContractorsState();
}

class _ContractorsState extends State<Contractors> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      key: scaffoldKey,
      drawer: CustomDrawer(),
      body: Stack(
        children: [
          Column(
            children: [
              Header(),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'CONTRACTORS',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                ),
              ),
              Divider(
                color: Color(0xffFF9900),
                indent: 30.w,
                endIndent: 30.w,
                thickness: 1.sp,
              ),
              SizedBox(
                height: 5.h,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) => Login()));
                        },
                        child: ContainerForContractors(
                          txt: 'Construction\n Management',
                          img: Image.asset(
                            'assets/sketch.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      ContainerForContractors(
                        txt: 'Reconstruction\n Services',
                        img: Image.asset(
                          'assets/excavator.png',
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ContainerForContractors(
                        txt: 'Building Information',
                        img: Image.asset(
                          'assets/building.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      ContainerForContractors(
                        txt: 'Building Information',
                        img: Image.asset(
                          'assets/handshake.png',
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                ],
              ),
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

class ContainerForContractors extends StatelessWidget {
  final String? txt;
  final Widget? img;
  const ContainerForContractors({Key? key, this.txt, this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3.h),
      height: 17.h,
      width: 44.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.sp),
        border: Border.all(
          color: Color(0xffFF9900),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 2.h, bottom: 1.h),
            height: 7.h,
            width: 20.w,
            child: img,
          ),
          Text(
            txt!,
            style: TextStyle(
              color: Color(0xffFF9900),
              fontSize: 15.sp,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
