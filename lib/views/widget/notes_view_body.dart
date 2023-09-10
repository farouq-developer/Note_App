import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custoum_App_Bar.dart';
import 'package:note_app/views/widget/note_list.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CustomAppBar(
            titlel: 'Notes',
            icon: Icons.search,
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
