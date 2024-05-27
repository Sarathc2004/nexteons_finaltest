import 'package:flutter/material.dart';
import 'package:nexteons_final_test/screens/login/widgets/logincard.dart';

class Mobilelogin extends StatelessWidget {
  const Mobilelogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/logo_blue.658ff1c292fc68 1.png"),
              ],
            ),
          ),
          logincard()
        ],
      ),
    );
  }
}
