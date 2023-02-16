import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mecato_uis_admin/views/screens/main_screen.dart';

void main() async { //inicializar app con firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: kIsWeb || Platform.isAndroid
          ? FirebaseOptions(
              apiKey: "AIzaSyBrB34JlAzUWhwuPp3JNTFUuLAx0xAqNQo",
              appId: "1:730731753846:web:809f41ab122b05c8fd0a57",
              messagingSenderId: "730731753846",
              projectId: "mecato-uis",
              storageBucket: "mecato-uis.appspot.com",
            )
          : null);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      builder: EasyLoading.init(),
    );
  }
}
