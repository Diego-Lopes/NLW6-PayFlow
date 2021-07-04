import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/login/login_page.dart';

class AuthController {
  var _isAuthenticated = false; //booleano deixamos com false para autenticar.
  var _user;

  get user =>
      _user; // salvar o usuário e não seja motificado. somente na função.

  void setUser(BuildContext context, var user) {
    //validadando se está autenticado ou não.
    if (user != null) {
      _isAuthenticated = true;
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      _isAuthenticated = false;
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }
}
