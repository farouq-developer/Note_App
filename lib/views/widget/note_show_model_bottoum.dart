import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custoum_bottoum.dart';
import 'package:note_app/views/widget/custoum_text_filed.dart';

class NoteShowBottoum extends StatelessWidget {
  const NoteShowBottoum({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 32,
          ),
          CustoumTextFiled(
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustoumTextFiled(
            hint: 'Content',
            maxline: 4,
          ),
          SizedBox(
            height: 60,
          ),
          CustoumBottoum(),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
