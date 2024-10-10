import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'User_mechanic_bill.dart';
import 'User_mechanic_detail.dart';
import 'User_notification.dart';


class User_mechanic_list extends StatefulWidget {
  const User_mechanic_list({super.key});

  @override
  State<User_mechanic_list> createState() => _User_mechanic_listState();
}

class _User_mechanic_listState extends State<User_mechanic_list> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue.shade100,
          toolbarHeight: 90.h,
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/Profile.png"),
              ),
              SizedBox(
                width: 20.w,
              ),
              Container(
                height: 45.h,
                width: 250.w,
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(CupertinoIcons.search),
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      focusColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return User_notification();
                    },));
                  },
                  icon: Icon(
                    Icons.notifications_none_outlined,
                    size: 30.sp,
                  ))
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: TabBarView(children: [
                  User_mechanic(),
                  Mechanic_request(),
                ])),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  height: 60,
                  width: 370,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  child: TabBar(
                      labelStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      indicatorColor: Colors.white,
                      indicator: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      indicatorPadding: EdgeInsets.only(top: 10, bottom: 10),
                      tabs: [
                        Tab(
                          child: Container(
                            height: 60,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                                  'Mechanic',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 60,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                                  'Request',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                      ]),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class User_mechanic extends StatefulWidget {
  const User_mechanic({super.key});

  @override
  State<User_mechanic> createState() => _User_mechanicState();
}

class _User_mechanicState extends State<User_mechanic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return User_mechanic_detail();
                },));
              },
              child: Container(
                child: Card(
                  color: Colors.blue.shade100,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 80.w,
                              width: 80.w,
                              child: Image(
                                image: AssetImage("assets/worker.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5.h,),
                            Text("Name",style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 3.h,),
                          ],
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("2+ Year Experiance",style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Fuel Leaking",style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900),
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            Container(
                              height: 20.h,
                              width: 90.w,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20.r)
                              ),
                              child: Center(
                                child: Text("Available",style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                                ),
                              ),
                            )


                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}


class Mechanic_request extends StatefulWidget {
  const Mechanic_request({super.key});

  @override
  State<Mechanic_request> createState() => _Mechanic_requestState();
}

class _Mechanic_requestState extends State<Mechanic_request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return User_mechanic_bill();
                },));
              },
              child: Container(
                child: Card(
                  color: Colors.blue.shade100,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15, right: 20, top: 10,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Wrap(
                              children: [
                                Text("Name",style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(height:5.h,),
                            Wrap(
                              children: [
                                Text("Date",style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(height:5.h,),
                            Wrap(
                              children: [
                                Text("Time",style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h,),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Fuel Leaking",style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900),
                              ),
                            ),
                            SizedBox(height: 10.h,),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 40.h,
                              width: 130.w,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20.r)
                              ),
                              child: Center(
                                child: Text("Approved",style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}



