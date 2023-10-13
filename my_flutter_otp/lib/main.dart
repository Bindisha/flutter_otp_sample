import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_otp/home.dart';
import 'package:my_flutter_otp/phone.dart';
import 'package:my_flutter_otp/verify.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    initialRoute: 'phone',
    debugShowCheckedModeBanner: true,
    routes: {
      'phone': (context) => MyPhone(),
      'home': (context) => MyHome(),
      'verify': (context) => MyVerify()
    },
  ));
}
