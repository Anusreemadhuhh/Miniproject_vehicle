import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mechanic_service extends StatefulWidget {
  const Mechanic_service({super.key});

  @override
  State<Mechanic_service> createState() => _Mechanic_serviceState();
}

class _Mechanic_serviceState extends State<Mechanic_service> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 70.h,
          automaticallyImplyLeading: false,
          title: Text(
            'Service',
            style: TextStyle(),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.blue.shade100),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 30, right: 30, top: 20, bottom: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Type puncture service'),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(CupertinoIcons.delete_solid))
                          ],
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Engine service'),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(CupertinoIcons.delete_solid))
                          ],
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('A/C Service'),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(CupertinoIcons.delete_solid))
                          ],
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Electric service'),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(CupertinoIcons.delete_solid))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Add_service();
              },
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.black,
            size: 45.sp,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28.0.r),
              side: BorderSide(color: Colors.black)),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}

class Add_service extends StatefulWidget {
  const Add_service({super.key});

  @override
  State<Add_service> createState() => _Add_serviceState();
}

class _Add_serviceState extends State<Add_service> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue.shade100,
      title: Text(
        'Add service',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        SizedBox(
          height: 30.h,
        ),
        TextField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10.r)),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.white),
        ),
        SizedBox(
          height: 90.h,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Container(
              width: 250.w,
              height: 55.h,
              decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Center(
                child: Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }
}
