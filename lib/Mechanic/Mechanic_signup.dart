import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Admin/Admin_homeusermech.dart';
import 'Mech_login.dart';

class Mechanic_signup extends StatefulWidget {
  const Mechanic_signup({super.key});

  @override
  State<Mechanic_signup> createState() => _Mechanic_signupState();
}

class _Mechanic_signupState extends State<Mechanic_signup> {

  Future<void>Mechsignuuppage()async{
    FirebaseFirestore.instance.collection("MechSignup").add({
      "Profile":"https://tse1.mm.bing.net/th?id=OIP.RPJ-SWAuwIsRe_MIr03f_QHaEo&pid=Api&P=0&h=180.",
      "Username":username_ctrl.text,
      "Phonenumber":phonenumber_ctrl.text,
      "Email":email_ctrl.text,
      "WorkExperience":workexp_ctrl.text,
      "WorkshopName":wrokshname_ctrl.text,
      "Password":password_ctrl.text,
      "Location":location_ctrl.text,
      "State":0,
    });
    print("Added Successfully");
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Mechanic_login();
    },));
  }
  var username_ctrl = TextEditingController();
  var phonenumber_ctrl = TextEditingController();
  var email_ctrl = TextEditingController();
  var workexp_ctrl = TextEditingController();
  var wrokshname_ctrl = TextEditingController();
  var password_ctrl = TextEditingController();
  var location_ctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Mechanic_login();
                        },));

                      },
                      icon: Icon(
                        CupertinoIcons.back,
                        color: Colors.black,
                        size: 35.sp,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: Column(
                children: [

                  Container(
                    width: 200.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/tow1.png"))),
                  ),
                  Center(
                      child: Text(
                        'SIGN UP',
                        style:
                        TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w900),
                      )),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Enter Username',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          controller: username_ctrl,
                          decoration: InputDecoration(
                              hintText: 'Username',
                              focusColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(0)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Enter Phone number',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          controller: phonenumber_ctrl,
                          decoration: InputDecoration(
                              hintText: 'Phone number',
                              focusColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(0)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Enter your email',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          controller: email_ctrl,
                          decoration: InputDecoration(
                              hintText: 'Enter email',
                              focusColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(0)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Enter your Work Experience',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          controller: workexp_ctrl,
                          decoration: InputDecoration(
                              hintText: 'Enter your Experience',
                              focusColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(0)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Enter your Work Shop Name',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          controller: wrokshname_ctrl,
                          decoration: InputDecoration(
                              hintText: 'Enter your Shop Name',
                              focusColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(0)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Enter your password',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          controller: password_ctrl,
                          decoration: InputDecoration(
                              hintText: 'Enter your password',
                              focusColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(0)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Enter your Location',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          controller: location_ctrl,
                          decoration: InputDecoration(
                              hintText: 'Enter your location',
                              focusColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(0)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: InkWell(
                      onTap: () {
                        Mechsignuuppage();
                      },
                      child: Container(
                        height: 50.h,
                        width: 220.w,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
