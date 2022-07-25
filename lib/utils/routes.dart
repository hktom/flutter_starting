import 'package:flutter_starting/lib/auth/screens/signin_page.dart';
import 'package:flutter_starting/lib/home/screens/home_page.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? getPages() {
  return [
    GetPage(name: '/', page: () => HomePage()),
    GetPage(name: '/signIn', page: () => SignInPage()),
  ];
}
