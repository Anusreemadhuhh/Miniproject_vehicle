import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Mechanic_navigation.dart';


class Mechanic_status extends StatefulWidget {
  const Mechanic_status({super.key});

  @override
  State<Mechanic_status> createState() =>
      _Mechanic_statusState();
}

class _Mechanic_statusState extends State<Mechanic_status> {
  String _status = 'Completed';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Card(
                    color: Colors.blue.shade100,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 15, bottom: 10),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 80.w,
                                width: 80.w,
                                child: Image(
                                  image: AssetImage("assets/person1.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Name",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50.h,
                          ),
                          Column(
                            children: [
                              Text(
                                "Fuel Leaking",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Date",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Time",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Place",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30.w,
                    ),
                    Text(
                      "Add Status",
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
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Radio<String>(
                                activeColor: Colors.blue.shade900,
                                value: 'Completed',
                                groupValue: _status,
                                onChanged: (String? value) {
                                  setState(() {
                                    _status = value!;
                                  });
                                },
                              ),
                              Text('Completed',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                          SizedBox(width: 20.w), // Space between containers
                          Row(
                            children: [
                              Radio<String>(
                                hoverColor: Colors.blue,
                                activeColor: Colors.blue.shade900,
                                value: 'Not Completed',
                                groupValue: _status,
                                onChanged: (String? value) {
                                  setState(() {
                                    _status = value!;
                                  });
                                },
                              ),
                              Text('Not Completed',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Container(
                  child:
                  _status=="Completed"?

                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 30.w,
                          ),
                          Text(
                            "Amount",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      Container(
                        height: 60.h,
                        width: 250.w,
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.currency_rupee),
                              hintText: "amount",
                              prefix: Padding(
                                padding: const EdgeInsets.only(top: 10),
                              ),
                              hintStyle: TextStyle(
                                fontSize: 15.sp,
                              ),
                              focusColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                    ],
                  ):
                  Column(
                    children: [


                      Row(
                        children: [
                          SizedBox(
                            width: 30.w,
                          ),
                          Text(
                            "Reject Reason",
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
                      Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30),
                        child: Container(

                          child: TextFormField(
                            minLines: 5,
                            maxLines: 10,
                            decoration: InputDecoration(
                                hintText: "Reject reason",
                                prefix: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 15.sp,
                                ),
                                focusColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                fillColor: Colors.white,
                                filled: true),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                    ],
                  ),

                ),

                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Mechanic_profile();
                      },
                    ));
                  },
                  child: Container(
                    height: 60.h,
                    width: 230.w,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Center(
                        child: Text(
                          'Submit',
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
        ));
  }
}
