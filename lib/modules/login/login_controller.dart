import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow/shared/auth/auth_controller.dart';

class LoginController {
  final authController = AuthController();
  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    // ignore: unused_element
    try {
      // ignore: unused_local_variable
      final response = await _googleSignIn.signIn();
      authController.setUser(context, response);
      // ignore: avoid_print
      print(response);
    } catch (error) {
      authController.setUser(context, null);
      // ignore: avoid_print
      print(error);
    }
  }
}
