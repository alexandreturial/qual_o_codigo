import 'package:dark_theme/modules/home/home_page.dart';
import 'package:dark_theme/shared/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Light & Dark Theme';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    builder: (context, _){
       //inicializa o theme provider
      final themeProvider = Provider.of<ThemeProvider>(context);
      
      return MaterialApp(
        title: 'Flutter Demo',
        //Adiciona o valor inicial do tema escolhido na classe ThemeProvider
        themeMode: themeProvider.themeMode,
        home: HomePage(),
      );
    }
  );
}

