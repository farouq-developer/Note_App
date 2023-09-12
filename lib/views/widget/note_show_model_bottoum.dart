import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custoum_bottoum.dart';
import 'package:note_app/views/widget/custoum_text_filed.dart';

class NoteShowBottoum extends StatelessWidget {
  const NoteShowBottoum({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(child: FormInput()),
    );
  }
}

class FormInput extends StatefulWidget {
  const FormInput({
    super.key,
  });

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode val = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: val,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustoumTextFiled(
            onsaved: (data) {
              title = data;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustoumTextFiled(
            onsaved: (p0) {
              subtitle = p0;
            },
            hint: 'Content',
            maxline: 4,
          ),
          const SizedBox(
            height: 60,
          ),
          CustoumBottoum(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                val = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
