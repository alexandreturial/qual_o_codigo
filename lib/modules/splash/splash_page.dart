import 'package:flutter/material.dart';
import 'package:login_com_google/shared/auth/auth_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();

    authController.currentUser(context);
    return Container(
      color: Color(0xff58a6ff),
      child: Image.asset("assets/images/logo.png",)
    );
  }
}