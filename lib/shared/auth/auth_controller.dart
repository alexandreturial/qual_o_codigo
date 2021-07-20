import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_com_google/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController{
  UserModel? _user;

  UserModel get user => _user!;

  //verifica se existe um usuario logado e redireciona para tela home
  void setUser(BuildContext context, UserModel? user){
    if(user != null){
      saveuser(user);
      _user = user;
      Navigator.pushReplacementNamed(context, "/home", arguments: user);
    }else{
      Navigator.pushReplacementNamed(context, "/login");
    }
  }

  //salva o usuario no internal storage
  Future<void> saveuser(UserModel user) async{
    final instance = await SharedPreferences.getInstance();
    await instance.setString("user", user.toJson());
    return;
  }
  
  //Pega o usuario logado
  Future<void> currentUser(BuildContext context) async{
    final instance = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 2));
    print(instance.get("user"));
    if(instance.containsKey("user")){
      final json = instance.get("user") as String;
      setUser(context, UserModel.fromJson(json));
      return;
    }else{
      setUser(context, null);
    }
  }

  // Future<void> removeUser(BuildContext context) async{
  //   final instance = await SharedPreferences.getInstance();
  //   if(instance.containsKey("user")){
  //     instance.remove("user");
  //   }
  //    Navigator.pushReplacementNamed(context, "/login");
  // }
}