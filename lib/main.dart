import 'package:form_application/repositories.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      title: 'Aplikasi Form XYZ',
      getPages: routes,
      initialRoute: Routes.login,
      builder: EasyLoading.init()
    )
  );
}