import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:nexteons_final_test/screens/login/loginservices.dart';
import 'package:nexteons_final_test/utils/constants/constants.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  var isLoading = true.obs;
  var id = "".obs;

  loginData() async {
    var data = await LoginDataService()
        .getData(emailController.text, passwordController.text);
    id.value = data;
    // storeData(id.value);
    if (id.value.isNotEmpty) {
      navigatorkey.currentContext!.go("/weblists");
    } else {
      print("login issue");
    }
  }

  // storeData(String tockenData) async {
  //   final sharedPref = await SharedPreferences.getInstance();
  //   await sharedPref.setString("loginId", tockenData);
  // }

  // removeTocken() async {
  //   final sharedPref = await SharedPreferences.getInstance();
  //   sharedPref.remove("loginId");
  //   id.value = "";
  // }
}
