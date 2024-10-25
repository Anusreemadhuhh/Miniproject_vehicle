import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'User_mechanic_list.dart';


class User_profile extends StatefulWidget {
  const User_profile({super.key});

  @override
  State<User_profile> createState() => _User_profileState();
}

class _User_profileState extends State<User_profile> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get_data_sp();
  }
  var id;
  Future<void> Get_data_sp()async{
    SharedPreferences data = await SharedPreferences.getInstance();
    setState(() {
      id = data.getString("User_id");

      print("Get Successful//////////////////");
      print(id);
    });
  }

  Future<void> Getbyid() async {
    Profile = await FirebaseFirestore.instance
        .collection("UserSignup")
        .doc(id)
        .get();
  }
  DocumentSnapshot? Profile;




  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Getbyid(),
      builder: (context, snapshot) {
        if(snapshot.connectionState==ConnectionState.waiting)
        {
          return CircularProgressIndicator(color: Colors.blue,);
        }
        if(snapshot.hasError){
          return Text("${snapshot.error}");
        }
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return User_mechanic_list();
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
                      SizedBox(height: 10.h,),
                      CircleAvatar(
                        radius: 50.r,
                        backgroundImage:AssetImage("assets/Profile.png")
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(Profile!["Username"],style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 20.sp
                      ),),
                      SizedBox(
                        height: 20.h,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Enter Your Name',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15.sp),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: Profile!["Username"],
                                  focusColor: Colors.blue.shade50,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10.r)),
                                  fillColor: Colors.blue.shade50,
                                  filled: true),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Enter Your Phone number',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15.sp),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: Profile!["Phonenumber"],
                                  focusColor: Colors.blue.shade50,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10.r)),
                                  fillColor: Colors.blue.shade50,
                                  filled: true),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
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
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: Profile!["Email"],
                                  focusColor: Colors.blue.shade50,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10.r)),
                                  fillColor: Colors.blue.shade50,
                                  filled: true),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 90.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 160),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return User_mechanic_list();
                            },));
                          },
                          child: Container(
                            height: 50.h,
                            width: 220.w,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade900,
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Center(
                                child: Text(
                                  'Done',
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
      },
    );
  }
}
