import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_controller.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  final pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        // ignore: prefer_const_constructors
        preferredSize: Size.fromHeight(152), //altura.
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(
                TextSpan(
                    text: "Olá, ",
                    style: TextStyles.titleRegular,
                    children: [
                      TextSpan(
                          text: "Diego", style: TextStyles.titleBoldBackground)
                    ]),
              ),
              subtitle: Text(
                "Mantenha suas contas em dia",
                style: TextStyles.captionShape,
              ),
              trailing: Container(
                //container da foto.
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ),
        ),
      ),
      body: pages[controller.currentPage],
      // ignore: sized_box_for_whitespace
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, //centralizado com espacamento entre elementos
          children: [
            // ignore: prefer_const_constructors
            IconButton(
                onPressed: () {
                  controller.setPage(0);
                  setState(() {});
                },
                // ignore: prefer_const_constructors
                icon: Icon(Icons.home),
                color: AppColors.primary),
            // ignore: prefer_const_constructors
            // GestureDetector(
            //   onTap: () {
            //     // ignore: avoid_print
            //     print("clicou");
            //   },
            // ),
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Icon(
                Icons.add_box_outlined,
                color: AppColors.background,
              ),
            ),

            IconButton(
              onPressed: () {
                controller.setPage(1);
                setState(() {}); //atualizar a pagina.
              },
              // ignore: prefer_const_constructors
              icon: Icon(Icons.description_outlined),
              color: AppColors.body,
            ),
          ],
        ),
      ),
    );
  }
}
