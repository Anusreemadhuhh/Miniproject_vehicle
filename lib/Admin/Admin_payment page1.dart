import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminPaymentpage extends StatefulWidget {
  const AdminPaymentpage({super.key});

  @override
  State<AdminPaymentpage> createState() => _AdminPaymentpageState();
}

class _AdminPaymentpageState extends State<AdminPaymentpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue[50],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/girl.jpeg"),fit: BoxFit.cover)),
                )
              ],
            ),
            Expanded(
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance.collection("User_request").where("Payment",isEqualTo: 5).snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }
                    final Payment=snapshot.data?.docs??[];
                    return  ListView.builder(
                      itemCount: Payment.length,
                      itemBuilder: (context, index) {
                        final doc=Payment[index];
                        final Transactions = doc.data() as Map<String,dynamic>;
                        return Card(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    " ${Transactions["User_name"] ?? ""}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(width: 230,),
                                  Text("${Transactions["Date"] ?? ""}")
                                ],
                              ),
                              Row(
                                children: [ Icon(Icons.attach_money),
                                  Text(
                                    "${Transactions["Amount"] ?? ""}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "${Transactions["Work"] ?? ""}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "${Transactions["Mech_name"] ?? ""}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
