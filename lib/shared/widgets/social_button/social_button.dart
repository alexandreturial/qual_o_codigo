import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialButton({ 
    Key? key, 
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(5),
          border: Border.fromBorderSide(
            BorderSide(
              color: Colors.grey.shade400,
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/google.png"
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Container(
                    color: Colors.grey.shade400,
                    width: 1,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Text(
                'Entrar com Google',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
