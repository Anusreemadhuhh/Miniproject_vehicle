import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'Navigationpage.dart';

class AdminUser extends StatefulWidget {
  const AdminUser({super.key, required this.id});
  final id;

  @override
  State<AdminUser> createState() => _AdminUserState();
}

class _AdminUserState extends State<AdminUser> {
  Future<void> _acceptStatus() async {
    await FirebaseFirestore.instance
        .collection('UserSignup')
        .doc(widget.id)
        .update({'State': 1});
    Navigator.pop(context);
  }

  Future<void> _rejectStatus() async {
    await FirebaseFirestore.instance
        .collection('UserSignup')
        .doc(widget.id)
        .update({'State': 2});
    Navigator.pop(context);
  }




  Future<void> Getbyid() async {
    User = await FirebaseFirestore.instance
        .collection("UserSignup")
        .doc(widget.id)
        .get();
  }

  DocumentSnapshot? User;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Getbyid(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return Scaffold(
          backgroundColor: Colors.blue[100],
          body: Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 800,
                  width: 400,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                      left: 20,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 30,
                                width: 30,
                                child: InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return Adminnavigation();
                                        },
                                      ));
                                    },
                                    child: Icon(Icons.arrow_back_ios_sharp))),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(
                                      image: NetworkImage('${User?["Profile"]}'),fit: BoxFit.cover
                                    )),
                              ),
                            ),
                            Center(
                                child: Text(
                              '${User?["Username"]}',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            )),
                            Center(
                                child: Text(
                              '${User?["Location"]}',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ))
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Enter Username',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            TextFormField(
                              readOnly: true,
                              decoration: InputDecoration(
                                  hintText: '${User?["Username"]}',
                                  focusColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          style: BorderStyle.none,
                                          color: Colors.white))),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Phone number',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            TextFormField(
                              readOnly: true,
                              decoration: InputDecoration(
                                  hintText: '${User?["Phonenumber"]}',
                                  focusColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.white,
                                          style: BorderStyle.none))),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Email address',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            TextFormField(
                              readOnly: true,
                              decoration: InputDecoration(
                                  hintText: '${User?["Email"]}',
                                  focusColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.white,
                                          style: BorderStyle.none))),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 50),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: InkWell(
                                  onTap: () {
                                    _acceptStatus();
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.blue[300],
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Accept',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: InkWell(onTap: () {
                                  _rejectStatus();
                                },
                                  child: Container(
                                    height: 40,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.red[200],
                                    ),
                                    child: Center(
                                        child: Text(
                                      'reject',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
