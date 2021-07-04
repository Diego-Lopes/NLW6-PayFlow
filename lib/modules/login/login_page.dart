import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/social_login/social_login_button.dart';

import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //instanciando o componente Login_Controller
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final size = MediaQuery.of(context)
        .size; // esse comando é usado para pegar toda tela do celular.
    // ignore: prefer_const_constructors

    return Scaffold(
      backgroundColor: AppColors.background,
      // ignore: sized_box_for_whitespace
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height *
                  0.36, //Aqui estamos peguando 36% da tela e logo abaxio aplicamos uma cor nela.
              color: AppColors.primary,
            ),
            Positioned(
                top: 40,
                left: 0,
                right: 0,
                child: Image.asset(
                  AppImages
                      .person, //chamando uma imagem e definindo seu tamnaho.
                  width: 208,
                  height: 300,
                )),
            Positioned(
              bottom: size.height * 0.09, //fica flexível esse modo.
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .center, //Colocamos uma coluna e pedidmos para centralizar.
                crossAxisAlignment: CrossAxisAlignment
                    .center, // pedimos para centralizar os itens na horizontal.
                children: [
                  Image.asset(AppImages
                      .logomini), //colocamos a img da logo mini, codigo barra.
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 70, right: 70),
                    child: Text(
                      "Organize seus boletos em um só lugar",
                      textAlign: TextAlign.center,
                      style: TextStyles.titleHome,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, left: 40, right: 40),
                    child: SocialLoginButton(onTap: () {
                      controller
                          .googleSignIn(context); //chamando aqui o controller
                    }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
