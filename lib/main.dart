import 'package:eshoping/consts/colors.dart';
import 'package:eshoping/consts/styles.dart';
import 'package:eshoping/views/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'consts/strings.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,

        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: darkFontGrey,
        ),
        ),
        fontFamily: regular,
      ),
      home: const SplashScreen(),

    );
  }
}



