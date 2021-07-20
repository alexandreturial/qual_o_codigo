import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:login_com_google/shared/auth/auth_controller.dart';
import 'package:login_com_google/shared/models/user_model.dart';

class LoginController{
  final AuthController authController = AuthController();
  Future<void> googleSignIn(BuildContext context) async{
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response = await _googleSignIn.signIn();
       print(response);
      final user = UserModel(
        name: response!.displayName!, 
        photoUrl: response.photoUrl
      );
      authController.setUser(context, user);
     
    } catch (e) {
      print(e);
    }

  } 
}