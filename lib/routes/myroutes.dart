// ignore_for_file: prefer_const_constructors

import 'package:go_router/go_router.dart';
import 'package:nexteons_final_test/screens/addlist/responsive/webasiteaddlist.dart';
import 'package:nexteons_final_test/screens/lists/responsive/weblists.dart';
import 'package:nexteons_final_test/screens/login/view_login.dart';
import 'package:nexteons_final_test/utils/constants/constants.dart';

final GoRouter router = GoRouter(
  navigatorKey: navigatorkey,
  // redirect: (context, state) async {
  //   if (await isTokenStored() == false) {
  //     return '/Logincreate';
  //   } else {
  //     return null;
  //   }
  // },
  initialLocation: '/Logincreate',
  routes: [
    GoRoute(
      path: '/Logincreate',
      builder: (context, state) => Logincreate(),
    ),
    GoRoute(
      path: '/weblists',
      builder: (context, state) => Weblists(),
    ),
    GoRoute(
      path: '/webaddlists',
      builder: (context, state) => Webaddlists(),
    ),
    // GoRoute(
    //   path: '/Teacherscreate',
    //   builder: (context, state) => TeachersCreate(),
    // ),
    // GoRoute(
    //   path: '/Logincreate',
    //   builder: (context, state) => Logincreate(),
    // ),
    // GoRoute(
    //   path: '/TeacherIpad',
    //   builder: (context, state) => TeacherIpad(),
    // )
  ],
);
// Future<bool> isTokenStored() async {
//   final SharedPreferences preferences = await SharedPreferences.getInstance();
//   String? accessToken = preferences.getString("accessToken");
//   print(accessToken);
//   return accessToken != null;
// }
