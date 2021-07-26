import 'package:dark_theme/shared/providers/theme_provider.dart';
import 'package:dark_theme/shared/widget/change_theme_button_widget.dart';
import 'package:dark_theme/shared/widget/navigator_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    final String text = themeProvider.isDarkMode
                ? 'Dark Theme' :
                  'Light Theme';

    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Dark'),
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello $text',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold
              ),
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
                    'Qual o código',
                    style: TextStyle(
                      fontSize: 20,
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