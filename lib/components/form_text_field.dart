import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final bool? obscureText;
  final TextEditingController? textController;

  const FormTextField(
      {Key? key, @required this.labelText, @required this.hintText, @required this.obscureText, @required this.textController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: const OutlineInputBorder(),
        ),
        obscureText: obscureText ?? false,
      ),
    );
  }
}
