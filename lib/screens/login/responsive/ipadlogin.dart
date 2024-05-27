import 'package:flutter/material.dart';
import 'package:nexteons_final_test/screens/login/widgets/logincard.dart';
import 'package:nexteons_final_test/utils/colorconstants/colorconstant.dart';

class IpadLogin extends StatelessWidget {
  const IpadLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 600,
            height: double.infinity,
            color: colorconstant.appbarcolor,
            child: Center(
                child: Container(
                    height: double.infinity,
                    width: 270,
                    child: Image.asset("assets/images/Frame 205.png"))),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [logincard()],
          ))
        ],
      ),
    );
  }
}
