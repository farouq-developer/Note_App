import 'package:flutter/material.dart';
import 'package:note_app/views/widget/note_show_model_bottoum.dart';
import 'package:note_app/views/widget/notes_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return NoteShowBottoum();
              });
        },
        child: Icon(Icons.add),
      ),
      body: const NoteViewBody(),
    );
  }
}
