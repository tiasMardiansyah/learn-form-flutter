import 'package:form_application/repositories.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return MVVM<DaftarViewModel>(
      view: () => _View(),
      viewModel: DaftarViewModel(),
    );
  }
}

class _View extends StatelessView<MenuViewModel> {
  @override
  Widget render(BuildContext context, MenuViewModel viewModel) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("FORM")
          ],
        ),
      ),
    );
  }
}
