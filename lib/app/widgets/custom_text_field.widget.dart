import 'package:form_application/repositories.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.inputType = TextInputType.text,
    this.displayText = 'Form',
    this.errorMessage = 'Form harus diisi',
  });

  final TextInputType? inputType;
  final String? errorMessage;
  final String? displayText;
  final TextEditingController? controller;

  @override
  State<StatefulWidget> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.inputType,
      decoration: _textFieldDecoration(),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return widget.errorMessage;
        }
        return null;
      },
    );
  }

  InputDecoration _textFieldDecoration() {
    return InputDecoration(
      labelText: widget.displayText,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
