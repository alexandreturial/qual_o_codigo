import 'package:flutter/material.dart';
import 'package:login_com_google/shared/auth/auth_controller.dart';
import 'package:login_com_google/shared/models/user_model.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  final UserModel user;

  HomePage({ Key? key, required this.user }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                 Container(
                  height: 48,
                  width: 48,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: NetworkImage(
                          widget.user.photoUrl!
                          ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child:Text(
                      "Olá, ${widget.user.name}",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
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
                      color: Colors.blue,
                    ),
                  ),
                  onTap: () => launch('https://github.com/alexandreturial/qual_o_codigo')
                ),
              ],
            )
            
          ],
        ),
      )
    );
  }
}