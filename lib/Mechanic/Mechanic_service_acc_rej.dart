import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mechanic_service_acc_rej extends StatefulWidget {
  const Mechanic_service_acc_rej({super.key});

  @override
  State<Mechanic_service_acc_rej> createState() => _Mechanic_service_acc_rejState();
}

class _Mechanic_service_acc_rejState extends State<Mechanic_service_acc_rej> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: Stack(
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 55),
              child: Card(
                child: Container(
                  height: 500.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.blue.shade100),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 30, right: 20, top: 40),
                    child: Column(
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                              fontSize: 20.sp,fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 50.h,),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Problem',
                                  style: TextStyle(
                                      fontSize: 15.sp,fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 15.h,),
                                Text(
                                  'Place',
                                  style: TextStyle(
                                      fontSize: 15.sp,fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 15.h,),
                                Text(
                                  'Date',
                                  style: TextStyle(
                                      fontSize: 15.sp,fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 15.h,),
                                Text(
                                  'Time',
                                  style: TextStyle(
                                      fontSize: 15.sp,fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 15.h,),
                                Text(
                                  'Contact number',
                                  style: TextStyle(
                                      fontSize: 15.sp,fontWeight: FontWeight.bold
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(width: 10.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ' : ',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 15.h,),
                                Text(
                                  ' : ',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 15.h,),
                                Text(
                                  ' : ',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 15.h,),
                                Text(
                                  ' : ',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 15.h,),
                                Text(
                                  ' : ',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fuel leaking',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 15.h,),
                                Text(
                                  'Kozhikode beach road',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 15.h,),
                                Text(
                                  '12/05/2023',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 15.h,),
                                Text(
                                  '10:00 am',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 15.h,),
                                Text(
                                  '0000000000',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 100.h,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 100.w,
                                height: 35.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Colors.green),
                                child: Center(
                                  child: Text(
                                    'Accept',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 50.w,
                              ),
                              Container(
                                width: 100.w,
                                height: 35.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Colors.red),
                                child: Center(
                                  child: Text(
                                    'Reject',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 133.w),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 50.r,
                backgroundImage: AssetImage('assets/person1.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
