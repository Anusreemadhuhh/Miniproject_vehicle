import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'User_mechanic_list.dart';

class User_mechanic_detail extends StatefulWidget {
  const User_mechanic_detail({super.key});

  @override
  State<User_mechanic_detail> createState() => _User_mechanic_detailState();
}

class _User_mechanic_detailState extends State<User_mechanic_detail> {
  final List<String> _sevices1 = [
    'Fuel leaking',
    'Battery Check',
    'Brake Pad Replacement',
    'Typer Changing',
    'Select'
  ];
  String Selected_item1 = 'Select';

  final List<String> _sevices2 = [
    'Fuel leaking',
    'Battery Check',
    'Brake Pad Replacement',
    'Typer Changing',
    'Select'
  ];
  String Selected_item2 = 'Select';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade100,
          title: Text(
            "Needed Service",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25.sp),
          ),
          toolbarHeight: 60.h,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: 120.h,
                  width: 120.w,
                  child: Image(
                    image: AssetImage("assets/worker.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  "Name",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Contact number",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "2+ Year Experiance",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  height: 40.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Center(
                    child: Text(
                      "Available",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Add needed service",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50.h,
                            width: 283.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: Colors.blue.shade50,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 13),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  dropdownColor: Colors.blue.shade50,
                                  value: Selected_item1,
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Colors.black,
                                    size: 35.sp,
                                  ),
                                  items: _sevices1.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      Selected_item1 = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_circle_sharp,
                                color: Colors.black,
                                size: 20.sp,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50.w,
                            width: 295.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: Colors.blue.shade50,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 13),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  dropdownColor: Colors.blue.shade50,
                                  value: Selected_item2,
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Colors.black,
                                    size: 35.sp,
                                  ),
                                  items: _sevices2.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      Selected_item2 = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return User_mechanic_list();
                          },));
                        },
                        child: Container(
                          height: 60.h,
                          width: 230.w,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Center(
                              child: Text(
                                'Request',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
