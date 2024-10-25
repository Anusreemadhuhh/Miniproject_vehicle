import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'Admin_Mechanic.dart';
import 'Admin_User.dart';

class Adminusermech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 95,
          backgroundColor: Colors.blue.shade50,
          title: CircleAvatar(
            backgroundImage: AssetImage("assets/Profile.png"),
            radius: 27,
          ),
          bottom: TabBar(
            padding: EdgeInsets.only(left: 30, right: 30),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue.shade400,
            ),
            tabs: [
              Tab(
                child: Text(
                  'User',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Mechanic',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            User(), // Call the first class
            Mechanic(),
            // Call the second class
          ],
        ),
      ),
    );
  }
}

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("UserSignup").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          final Usignup = snapshot.data?.docs ?? [];
          return ListView.builder(
            itemCount: Usignup.length ,
            itemBuilder: (context, index) {
              final doc = Usignup[index];
              final Usersignupp= doc .data() as Map<String, dynamic>;
              return Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AdminUser(id : doc.id);
                  },));
                },
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("${Usersignupp["Profile"] ?? ""}"),
                                )),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 82),
                                child: Text(
                                  "Name:${Usersignupp["Username"] ?? ""}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 80),
                                child: Text(
                                  "Location:${Usersignupp["Location"] ?? ""}",
                                  style: TextStyle(color: Colors.black, fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 78),
                                child: Text(
                                  "Password:${Usersignupp["Password"] ?? ""}",
                                  style: TextStyle(color: Colors.black, fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 80),
                                child: Text(
                                  "Email:${Usersignupp["Email"] ?? ""}",
                                  style: TextStyle(color: Colors.black, fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 80),
                                child: Text(
                                  "Number:${Usersignupp["Phonenumber"] ?? ""}",
                                  style: TextStyle(color: Colors.black, fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            // itemCount: 20,
          );
        },
      ),
    );
  }
}



class Mechanic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("MechSignup").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          final mechsign = snapshot.data?.docs ?? [];
          return ListView.builder(
            itemCount: mechsign.length ,
            itemBuilder: (context, index) {
              final doc = mechsign[index];
              final mechsignupppage = doc .data() as Map<String, dynamic>;
              return Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AdminMechanic(id: doc.id);
                  },));
                },
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("${mechsignupppage["Profile"] ?? ""}"),
                                )),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 82),
                                child: Text(
                                  "Username:${mechsignupppage["Username"] ?? ""}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 82),
                                child: Text(
                                  "Phonenumber:${mechsignupppage["Phonenumber"] ?? ""}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 82),
                                child: Text(
                                  "Email:${mechsignupppage["Email"] ?? ""}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 82),
                                child: Text(
                                  "WorkExperience:${mechsignupppage["WorkExperience"] ?? ""}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 82),
                                child: Text(
                                  "WorkshopName:${mechsignupppage["WorkshopName"] ?? ""}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 82),
                                child: Text(
                                  "Location:${mechsignupppage["Location"] ?? ""}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            // itemCount: 20,
          );
        },
      ),
    );
  }
}