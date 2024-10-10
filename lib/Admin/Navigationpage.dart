import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'Admin_Notificationpage.dart';
import 'Admin_homeusermech.dart';
import 'Admin_loginpage.dart';
import 'Admin_payment page1.dart';




class Adminnavigation extends StatefulWidget {
  Adminnavigation({Key? key}) : super(key: key);

  @override
  _AdminnavigationState createState() => _AdminnavigationState();
}

class _AdminnavigationState extends State<Adminnavigation> {
  int _selectedIndex = 0;

  static  List<dynamic> _widgetOptions = [
    Adminusermech(),
    AdminPaymentpage(),
    AdminNotificationpage(),




  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined,color:Colors.black,size: 30,),
                label: 'Home',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.wallet,color:Colors.black,size: 30,),
                label: 'Payment',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined,color:Colors.black,size: 27,),
                label: 'Notification',
                backgroundColor: Colors.white),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}