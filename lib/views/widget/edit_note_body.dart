import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/widget/color_list.dart';
import 'package:note_app/views/widget/custoum_App_Bar.dart';
import 'package:note_app/views/widget/custoum_text_filed.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subtitle ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).feathNotes();
              Navigator.pop(context);
            },
            titlel: 'Edit Notes',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 20,
          ),
          CustoumTextFiled(
            hint: 'Title',
            initial: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 12,
          ),
          CustoumTextFiled(
            hint: 'content',
            maxline: 4,
            initial: widget.note.subtitle,
            onChanged: (value) {
              subtitle = value;
            },
          ),
          const SizedBox(
            height: 12,
          ),
          EditNoteColor(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
