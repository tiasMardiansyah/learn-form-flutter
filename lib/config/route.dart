import 'package:form_application/repositories.dart';

class Routes {
  static String login = '/login';
  static String daftar = '/daftar';
  static String menuForm = '/menu-form';
}

var routes = [
  GetPage(
    name: Routes.login,
    page: () => const Login(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: Routes.daftar,
    page: () => const Daftar(),
    transition: Transition.cupertino,
  ),
  GetPage(
    name: Routes.menuForm,
    page: () => const Daftar(),
    transition: Transition.cupertino,
  )
];