import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/widget/custoum_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  // final List<Color> colorthem = const [
  //   Color(0xffFFcc80),
  //   Colors.red,
  //   Colors.blue,
  //   Colors.orange
  // ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CustoumItem(
                    note: notes[index],
                    // concolor: colorthem[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
