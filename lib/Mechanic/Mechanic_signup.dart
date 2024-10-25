import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Mech_login.dart';

class Mechanic_signup extends StatefulWidget {
  const Mechanic_signup({super.key});

  @override
  State<Mechanic_signup> createState() => _Mechanic_signupState();
}

class _Mechanic_signupState extends State<Mechanic_signup> {
  final _formKey = GlobalKey<FormState>(); // Add a GlobalKey for form validation

  Future<void> Mechsignuuppage() async {
    if (_formKey.currentState!.validate()) {
      // If the form is valid, proceed to add the mechanic's details
      FirebaseFirestore.instance.collection("MechSignup").add({
        "Profile":
        "https://tse1.mm.bing.net/th?id=OIP.RPJ-SWAuwIsRe_MIr03f_QHaEo&pid=Api&P=0&h=180.",
        "Username": username_ctrl.text,
        "Phonenumber": phonenumber_ctrl.text,
        "Email": email_ctrl.text,
        "WorkExperience": workexp_ctrl.text,
        "WorkshopName": wrokshname_ctrl.text,
        "Password": password_ctrl.text,
        "Location": location_ctrl.text,
        "State": 0,
      });
      print("Added Successfully");
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Mechanic_login();
      }));
    }
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
        child: Form(
          key: _formKey, // Assign the form key
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
                          }));
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
                          style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w900),
                        )),
                    Column(
                      children: [
                        _buildInputField(
                          label: 'Enter Username',
                          controller: username_ctrl,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a username';
                            }
                            return null;
                          },
                        ),
                        _buildInputField(
                          label: 'Enter Phone number',
                          controller: phonenumber_ctrl,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a phone number';
                            } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                              return 'Enter a valid phone number';
                            }
                            return null;
                          },
                        ),
                        _buildInputField(
                          label: 'Enter your email',
                          controller: email_ctrl,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter an email address';
                            } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                              return 'Enter a valid email address';
                            }
                            return null;
                          },
                        ),
                        _buildInputField(
                          label: 'Enter your Work Experience',
                          controller: workexp_ctrl,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your work experience';
                            }
                            return null;
                          },
                        ),
                        _buildInputField(
                          label: 'Enter your Work Shop Name',
                          controller: wrokshname_ctrl,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your workshop name';
                            }
                            return null;
                          },
                        ),
                        _buildInputField(
                          label: 'Enter your password',
                          controller: password_ctrl,
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a password';
                            } else if (value.length < 6) {
                              return 'Password must be at least 6 characters';
                            }
                            return null;
                          },
                        ),
                        _buildInputField(
                          label: 'Enter your Location',
                          controller: location_ctrl,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your location';
                            }
                            return null;
                          },
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({
    required String label,
    required TextEditingController controller,
    bool obscureText = false,
    required String? Function(String?) validator,
  }) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 10.w,
            ),
            Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: label,
              focusColor: Colors.white,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(0)),
              fillColor: Colors.white,
              filled: true,
            ),
            validator: validator, // Add validation logic here
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
