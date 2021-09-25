import 'package:construction_app/common_widgets/custom_drawer.dart';
import 'package:construction_app/common_widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PriceList extends StatelessWidget {
  const PriceList({Key? key}) : super(key: key);

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
              SizedBox(
                height: 5.h,
              ),
              Column(
                children: [
                  Text(
                    'PRICE LIST',
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
              Container(
                height: 54.h,
                width: 90.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffFF9900)),
                  borderRadius: BorderRadius.circular(15.sp),
                ),
                child: DataTable(
                  columnSpacing: 1.h,
                  horizontalMargin: 2.h,
                  // showBottomBorder: true,
                  columns: <DataColumn>[
                    DataColumn(
                      label: TableContainer(
                        txt: 'S.No',
                        height: 5.h,
                        width: 15.w,
                      ),
                    ),
                    DataColumn(
                      label: TableContainer(
                        txt: 'Category',
                        height: 5.h,
                        width: 25.w,
                        // width: 90.w,
                      ),
                    ),
                    DataColumn(
                      label: TableContainer(
                        txt: 'Quality',
                        height: 5.h,
                        width: 17.w,
                      ),
                    ),
                    DataColumn(
                      label: TableContainer(
                        txt: 'Price',
                        height: 5.h,
                        width: 15.w,
                      ),
                    ),
                  ],
                  rows: names
                      .map(
                        (e) => DataRow(
                          cells: [
                            DataCell(
                              Container(
                                margin: EdgeInsets.only(left: 15.sp),
                                child: Text(e.sNo.toString()),
                              ),
                            ),
                            DataCell(
                              Container(
                                margin: EdgeInsets.only(left: 15.sp),
                                child: Text(e.category.toString()),
                              ),
                            ),
                            DataCell(
                              Container(
                                margin: EdgeInsets.only(left: 15.sp),
                                child: Text(e.quality.toString()),
                              ),
                            ),
                            DataCell(
                              Container(
                                margin: EdgeInsets.only(left: 15.sp),
                                child: Text(e.price.toString()),
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                  showBottomBorder: false,
                ),
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

class TableContainer extends StatelessWidget {
  final String? txt;
  final double? height;
  final double? width;
  const TableContainer({Key? key, this.txt, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Color(0xffFF9900),
        borderRadius: BorderRadius.circular(5.sp),
      ),
      child: Text(
        txt!,
        style: TextStyle(
          fontSize: 12.sp,
          color: Colors.white,
        ),
      ),
    );
  }
}

class Names {
  final int? sNo;
  final String? category;
  final int? price;
  final String? quality;

  Names({this.sNo, this.category, this.price, this.quality});
}

var names = <Names>[
  Names(sNo: 1, category: 'Cement', quality: 'pauji', price: 530),
  Names(sNo: 2, category: 'sanitry', quality: 'hight', price: 530),
  Names(sNo: 3, category: 'Cement', quality: 'pauji', price: 530),
  Names(sNo: 4, category: 'Cement', quality: 'low', price: 220),
  Names(sNo: 5, category: 'Cement', quality: 'pauji', price: 530),
  Names(sNo: 6, category: 'Cement', quality: 'low', price: 220),
  Names(sNo: 9, category: 'Cement', quality: 'pauji', price: 530),
];
