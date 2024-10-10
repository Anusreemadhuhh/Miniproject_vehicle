import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Mech_profile.dart';
import 'Mechanic_notification.dart';
import 'Mechanic_service_acc_rej.dart';
import 'Mechanic_status.dart';

class Mechanic_service_and_request extends StatefulWidget {
  const Mechanic_service_and_request({super.key});

  @override
  State<Mechanic_service_and_request> createState() => _Mechanic_service_and_requestState();
}

class _Mechanic_service_and_requestState extends State<Mechanic_service_and_request> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          toolbarHeight: 170.h,
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Mechanic_profile();
                      },));

                    },
                    child: CircleAvatar(
                      radius: 30.r,
                      backgroundImage: AssetImage("assets/profile1.png"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Mechanic_notification();
                        },));
                      },
                      icon: Icon(
                        Icons.notifications_none_outlined,
                        size: 40.sp,
                      ))
                ],
              ),
              SizedBox(height: 25.h,),
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
                                'Requests',
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
                                'Accepted',
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
        ),
        body:
        Expanded(
            child: TabBarView(children: [
              Mechanic_requests(),
              Mechanic_accepted(),
            ])),
      ),
    );
  }
}

class Mechanic_requests extends StatefulWidget {
  const Mechanic_requests({super.key});

  @override
  State<Mechanic_requests> createState() => _Mechanic_requestsState();
}

class _Mechanic_requestsState extends State<Mechanic_requests> {
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
                  return Mechanic_service_acc_rej();
                },));

              },
              child: Container(
                child: Card(
                  color: Colors.blue.shade100,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 50, top: 15, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ),
          );
        },
      ),
    );
  }
}


class Mechanic_accepted extends StatefulWidget {
  const Mechanic_accepted({super.key});

  @override
  State<Mechanic_accepted> createState() => _Mechanic_acceptedState();
}

class _Mechanic_acceptedState extends State<Mechanic_accepted> {
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
                  return Mechanic_status();
                },));

              },
              child: Container(
                child: Card(
                  color: Colors.blue.shade100,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 15, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        ),
                        Column(
                          children: [
                            Container(
                              width: 150.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Colors.green),
                              child: Center(
                                child: Text(
                                  'Payment success',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
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



