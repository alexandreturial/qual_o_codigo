import 'package:flutter/material.dart';
import 'package:login_com_google/modules/home/home_page.dart';
import 'package:login_com_google/modules/login/login_page.dart';
import 'package:login_com_google/modules/splash/splash_page.dart';
import 'package:login_com_google/shared/models/user_model.dart';

class MyAppWidget extends StatelessWidget {
  const MyAppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primaryColor: AppColors.primary,
        primarySwatch: Colors.orange,
      ),
      initialRoute: "/",
      routes:{
        "/" : (context) => SplashPage(),
        "/home" : (context) => HomePage(user: ModalRoute.of(context)!.settings.arguments as UserModel,),
        "/login"  : (context) => LoginPage(),
      }
    );
  }
}