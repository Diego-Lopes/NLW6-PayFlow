import 'package:flutter/material.dart';
import 'package:payflow/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  UserModel? _user;

  UserModel get user =>
      _user!; // salvar o usuário e não seja motificado. somente na função.

  void setUser(BuildContext context, UserModel? user) {
    //validadando se está autenticado ou não.
    if (user != null) {
      saveUser(user); //aqui criamos uma variável para salvar
      _user = user; //aqui armazanamos essa variável com o login do user.
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      Navigator.pushReplacementNamed(context, "/login");
    }
  }
  //funções que vai receber shared_preferences

  Future<void> saveUser(UserModel user) async {
    final instance = await SharedPreferences
        .getInstance(); //buscamos a instancia do sharedpreference.
    await instance.setString("user", user.toJson());
    return;
  }

  Future<void> currentUser(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();
    // ignore: prefer_const_constructors
    await Future.delayed(Duration(seconds: 2)); //delay da splash para home.
    if (instance.containsKey("user")) {
      final json = instance.get("user") as String;
      setUser(context, UserModel.fromJson(json));
      return;
    } else {
      setUser(context, null);
    }
  }
}
