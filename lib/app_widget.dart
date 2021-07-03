// ignore: use_key_in_widget_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';

import 'modules/login/login_page.dart';

// ignore: use_key_in_widget_constructors
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: const LoginPage(),
    );
  }
}
