import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vehiclerepair_miniproject/home.dart';

import 'Navigationpage.dart';


class Adminloginpage extends StatefulWidget {
  const Adminloginpage({super.key});

  @override
  State<Adminloginpage> createState() => _AdminloginpageState();
}

class _AdminloginpageState extends State<Adminloginpage> {

  final formkey = GlobalKey<FormState>(); //for validations
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 180,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 155),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/tow1.png"),fit: BoxFit.cover)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [Row(
                    children: [
                      Text("Enter Username",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Invalid credentials";
                        }
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: ("Username"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [Row(
                    children: [
                      Text("Password",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) ;
                        {
                          return "Invalid password";
                        }
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.remove_red_eye),
                          hintText: (" Enter Password"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Adminnavigation();
                    },));
                  },
                    child: Container(
                      height: 60,
                      width:250,
                      decoration: BoxDecoration(
                          color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
