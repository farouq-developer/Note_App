import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custoum_App_Bar.dart';
import 'package:note_app/views/widget/custoum_text_filed.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CustomAppBar(
            titlel: 'Edit Notes',
            icon: Icons.check,
          ),
          SizedBox(
            height: 20,
          ),
          CustoumTextFiled(hint: 'Title'),
          SizedBox(
            height: 12,
          ),
          CustoumTextFiled(
            hint: 'content',
            maxline: 4,
          )
        ],
      ),
    );
  }
}
