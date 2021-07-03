import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app_widget.dart';

void main() {
  runApp(AppFirebase());
}

// ignore: use_key_in_widget_constructors
class AppFirebase extends StatefulWidget {
  @override
  State<AppFirebase> createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            //quando der algum erro vou retornar um material no centro e o texto do erro.
            return const Material(
              child: Center(
                child: Text(
                  "Não foi possível inicializar o Firebase",
                  textDirection: TextDirection.ltr,
                ),
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            //quando o conexão der todo certo vai chamar o widget
            return AppWidget();
          } else {
            return const Material(
              child: Center(
                child:
                    CircularProgressIndicator(), //enquando não carrega colocamos um loading.
              ),
            );
          }
        });
  }
}
