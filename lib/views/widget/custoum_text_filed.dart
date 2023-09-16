import 'package:flutter/material.dart';
import 'package:note_app/constans.dart';

class CustoumTextFiled extends StatelessWidget {
  const CustoumTextFiled(
      {super.key,
      required this.hint,
      this.maxline,
      this.onsaved,
      this.initial,
      this.onChanged});
  final String hint;
  final int? maxline;
  final String? initial;
  final void Function(String?)? onsaved;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initial,
      onChanged: onChanged,
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
