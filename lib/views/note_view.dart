import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custoum_App_Bar.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
