import 'package:dark_theme/shared/providers/theme_provider.dart';
import 'package:dark_theme/shared/widget/change_theme_button_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String text = MediaQuery.of(context).platformBrightness == Brightness.dark
                ? 'DarkTheme' :
                 'lightTheme';
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