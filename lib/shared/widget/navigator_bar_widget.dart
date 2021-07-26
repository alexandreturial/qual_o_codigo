import 'package:dark_theme/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

class NavigatorBarWidget extends StatelessWidget {
  const NavigatorBarWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Theme.of(context).primaryColor)
          ],
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home_rounded),
            Icon(Icons.search),
            Icon(Icons.camera_alt),
            Icon(Icons.notifications),
            Icon(Icons.person),
          ],
        ),
      ),
    );
  }
}