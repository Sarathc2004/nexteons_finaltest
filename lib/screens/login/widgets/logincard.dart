import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:nexteons_final_test/screens/login/logincontroller.dart';
import 'package:nexteons_final_test/utils/colorconstants/colorconstant.dart';
import 'package:nexteons_final_test/widgets/textformfield.dart';

class logincard extends StatelessWidget {
  final LoginController ctrl = Get.put(LoginController());
  logincard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(70.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome Back! Glad to see you again",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Textformfield(
                controller: ctrl.emailController,
                hintText: "Email Address",
              ),
              SizedBox(
                height: 50,
              ),
              Textformfield(
                controller: ctrl.passwordController,
                hintText: "Password",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {}, child: Text("Forget password"))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  LoginController().loginData();
                },
                child: Container(
                  width: 396,
                  height: 45,
                  decoration: BoxDecoration(
                      color: colorconstant.appbarcolor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "LOGIN",
                    style: TextStyle(color: colorconstant.White),
                  )),
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Dont have an account?"),
            TextButton(onPressed: () {}, child: Text("Register now"))
          ],
        )
      ],
    );
  }
}
