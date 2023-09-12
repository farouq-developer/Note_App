import 'package:flutter/material.dart';
import 'package:note_app/constans.dart';

class CustoumTextFiled extends StatelessWidget {
  const CustoumTextFiled(
      {super.key, required this.hint, this.maxline, this.onsaved});
  final String hint;
  final int? maxline;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'the filed is required';
        } else {
          null;
        }
      },
      cursorColor: kPrimary,
      decoration: InputDecoration(
        border: BorderCustom(),
        enabledBorder: BorderCustom(),
        focusedBorder: BorderCustom(kPrimary),
        hintText: hint,
        hintStyle: const TextStyle(color: kPrimary),
      ),
      maxLines: maxline,
    );
  }

  OutlineInputBorder BorderCustom([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
