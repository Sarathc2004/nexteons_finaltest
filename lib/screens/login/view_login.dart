import 'package:flutter/material.dart';
import 'package:nexteons_final_test/screens/login/responsive/ipadlogin.dart';
import 'package:nexteons_final_test/screens/login/responsive/mobilelogin.dart';

import 'package:nexteons_final_test/screens/login/responsive/weblogin.dart';
import 'package:nexteons_final_test/widgets/responsive.dart';

class Logincreate extends StatefulWidget {
  const Logincreate({super.key});

  @override
  State<Logincreate> createState() => _StudentsCreateState();
}

class _StudentsCreateState extends State<Logincreate> {
  // late Controllerclass ctrl;
  // final String tag = DateTime.now().toString();

  // @override
  // void initState() {
  //   ctrl = Get.put(Controllerclass(), tag: tag);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   Get.delete<Controllerclass>(tag: tag);
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Responsive(
      web: Weblogin(),
      mobile: Mobilelogin(),
      ipad: IpadLogin(),
    );
  }
}
