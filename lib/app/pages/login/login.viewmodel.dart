import 'dart:async';

import 'package:form_application/repositories.dart';

class LoginViewModel extends ViewModel {
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void validate() async {
    if (formKey.currentState!.validate()) {
      EasyLoading.show(
        dismissOnTap: false,
        status: "Memproses...",
        maskType: EasyLoadingMaskType.black,
      );

      //untuk mocking saja
      Timer(const Duration(seconds: 2), () {
        if (usernameController.text == "test" &&
            passwordController.text == "password") {
          EasyLoading.showSuccess(
            "Hello User",
            duration: Duration(seconds: 1),
            maskType: EasyLoadingMaskType.black,

            //do some routing here

          );
        } else {
          EasyLoading.showError(
            "Password atau username salah",
            duration: Duration(seconds: 1),
            maskType: EasyLoadingMaskType.black,
          );
        }
      });
    }
  }

  void goToDaftar() => Get.toNamed(Routes.daftar);

}
