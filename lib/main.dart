import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_com_google/my_app_widget.dart';

void main() {
  runApp(AppFirebase());
}

class AppFirebase extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AppFirebaseState createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    //Verificar se o firebase foi inicializado
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Material(
                child: Center(
              child: Text(
                "Não foi possivel incializar o Firebase",
                textDirection: TextDirection.ltr,
              ),
            ));
          } else {
            // conecção completa, mostra a aplicação
            if (snapshot.connectionState == ConnectionState.done) {
              return MyAppWidget();
            }
            // mostra loading até completar o processo de conecção do firebase
            return Material(child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
