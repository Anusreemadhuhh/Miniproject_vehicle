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
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                " Name",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(width: 230,),
                              Text("10/11/23")
                            ],
                          ),
                          Row(
                            children: [ Icon(Icons.attach_money),
                              Text(
                                "5455",
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
                                "service",
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
                                "Mechanic Name",
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
                ))
          ],
        ),
      ),
    );
  }
}
