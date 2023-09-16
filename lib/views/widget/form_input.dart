import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubit/add_note_cubit/add_notes_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/widget/color_list.dart';
import 'package:note_app/views/widget/custoum_bottoum.dart';
import 'package:note_app/views/widget/custoum_text_filed.dart';

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
            height: 15,
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
            height: 15,
          ),
          const ColorListViwe(),
          const SizedBox(
            height: 25,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustoumBottoum(
                isLoding: state is AddNotesLoading ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var curentdate = DateTime.now();
                    var dataformation =
                        DateFormat('dd - m - yyyy').format(curentdate);
                    var noteModel = NoteModel(
                        title: title!,
                        subtitle: subtitle!,
                        date: dataformation,
                        color: Colors.blue.value);
                    BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                  } else {
                    val = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
