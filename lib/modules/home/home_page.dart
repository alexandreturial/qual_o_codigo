import 'package:dark_theme/shared/providers/theme_provider.dart';
import 'package:dark_theme/shared/widget/change_theme_button_widget.dart';
import 'package:dark_theme/shared/widget/navigator_bar_widget.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    final String text = themeProvider.isDarkMode
                ? 'Dark' :
                  'Light';

    return Scaffold(
      appBar: AppBar(
        title: Text('Theme $text'),
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/logo.png",
              width: 250,
              height: 250,
              //busca o valor da cor dentro do theme
              color: Theme.of(context).highlightColor,
            ),
            Column(
              children: [
                Text(
                  'Veja mais códigos em:',
                  style: TextStyle(
                      fontSize: 18,
                    ),
                ),
                InkWell(
                  child: new Text(
                    'Qual o código ?',
                    style: TextStyle(
                      fontSize: 20,
                      //busca o valor da cor dentro do theme
                      color: Theme.of(context).errorColor,
                    ),
                  ),
                  onTap: () => launch('https://github.com/alexandreturial/qual_o_codigo')
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigatorBarWidget(),
    );
  }
}