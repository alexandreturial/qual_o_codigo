import 'package:dark_theme/shared/providers/theme_provider.dart';
import 'package:dark_theme/shared/widget/change_theme_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
            Image.network(
              'https://github.com/alexandreturial/qual_o_codigo/blob/login_com_google/assets/images/logo.png?raw=true',

            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
       
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}