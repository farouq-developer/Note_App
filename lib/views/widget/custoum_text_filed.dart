import 'package:flutter/material.dart';
import 'package:note_app/constans.dart';

class CustoumTextFiled extends StatelessWidget {
  const CustoumTextFiled({super.key, required this.hint, this.maxline});
  final String hint;
  final int? maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
