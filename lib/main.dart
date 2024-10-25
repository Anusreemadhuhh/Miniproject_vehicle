import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Admin/Admin_Addnotificationpage.dart';
import 'Admin/Admin_Notificationpage.dart';
import 'Admin/Admin_User.dart';
import 'Admin/Admin_homeusermech.dart';
import 'Admin/Admin_loginpage.dart';
import 'Admin/Navigationpage.dart';
import 'Mechanic/Mech_login.dart';
import 'Mechanic/Mech_profile.dart';
import 'Mechanic/Mechanic_signup.dart';
import 'Mechanic/Mechanic_status.dart';
import 'Mechanic/Mechedit_profile.dart';
import 'User/Payment_successful..dart';
import 'User/User_login.dart';
import 'User/User_mechanic_detail.dart';
import 'User/User_mechanic_list.dart';
import 'User/User_rating.dart';
import 'User/User_signup.dart';
import 'home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  Home(),
      ),
      designSize: Size(393, 851),
    );
  }
}

