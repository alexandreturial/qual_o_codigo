import 'package:flutter/material.dart';
import 'package:login_com_google/modules/login/login_controller.dart';
import 'package:login_com_google/shared/widgets/social_button/social_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = LoginController();

    final size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Color(0xff58a6ff),
              child: Image.asset("assets/images/logo.png",),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.08,
                  width: size.width * 0.8,
                  child: SocialButton(onTap: (){
                    loginController.googleSignIn(context);
                  }),
                ),
             ],
            ),
          )
        ],
      )
    )
    );
  }
}