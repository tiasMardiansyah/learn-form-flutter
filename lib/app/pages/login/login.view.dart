import 'package:form_application/repositories.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MVVM<LoginViewModel>(
      view: () => _View(),
      viewModel: LoginViewModel(),
    );
  }
}

class _View extends StatelessView<LoginViewModel> {
  @override
  Widget render(BuildContext context, LoginViewModel viewModel) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("This is Form"),
                CustomTextField(
                  controller: viewModel.usernameController,
                  displayText: "Username",
                  errorMessage: "Username harus diisi",
                ),
                CustomPasswordFormField(
                  controller: viewModel.passwordController,
                  displayText: "Password",
                  errorMessage: "Password harus diisi",
                ),
                ElevatedButton(
                  onPressed: viewModel.validate,
                  child: const Text("Login"),
                ),
                ElevatedButton(
                  onPressed: viewModel.goToDaftar,
                  child: const Text("Daftar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
