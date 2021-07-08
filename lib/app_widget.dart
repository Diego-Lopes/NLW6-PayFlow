// ignore: use_key_in_widget_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';

import 'modules/home/home_page.dart';
import 'modules/login/login_page.dart';
import 'modules/splash/splash_page.dart';

// ignore: use_key_in_widget_constructors
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pay Flow',
        theme: ThemeData(primaryColor: AppColors.primary),
        //
        initialRoute: "/splash",
        routes: {
          //rotas nomeadas.
          "/splash": (context) => const SplashPage(),
          "/home": (context) => const HomePage(),
          "/login": (context) => const LoginPage(),
        });
  }
}
