import 'package:form_application/repositories.dart';

class Daftar extends StatelessWidget {
  const Daftar({super.key});

  @override
  Widget build(BuildContext context) {
    return MVVM<DaftarViewModel>(
      view: () => _View(),
      viewModel: DaftarViewModel(),
    );
  }
}

class _View extends StatelessView<DaftarViewModel> {
  @override
  Widget render(BuildContext context, DaftarViewModel viewModel) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("HELLO DAFTAR")
          ],
        ),
      ),
    );
  }
}
