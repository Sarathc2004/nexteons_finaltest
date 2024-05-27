import 'package:flutter/material.dart';
import 'package:nexteons_final_test/screens/login/widgets/logincard.dart';
import 'package:nexteons_final_test/utils/colorconstants/colorconstant.dart';

class Weblogin extends StatelessWidget {
  const Weblogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 852,
            height: double.infinity,
            color: colorconstant.appbarcolor,
            child: Center(
                child: Container(
                    height: double.infinity,
                    width: 396,
                    child: Image.asset("assets/images/Frame 205.png"))),
          ),
          Expanded(child: logincard()),
        ],
      ),
    );
  }
}
