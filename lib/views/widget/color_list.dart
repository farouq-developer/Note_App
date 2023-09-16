import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constans.dart';
import 'package:note_app/cubit/add_note_cubit/add_notes_cubit.dart';
import 'package:note_app/model/note_model.dart';

class CutsoumColor extends StatelessWidget {
  const CutsoumColor({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 34,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 34,
            backgroundColor: color,
          );
  }
}

class ColorListViwe extends StatefulWidget {
  const ColorListViwe({super.key});

  @override
  State<ColorListViwe> createState() => _ColorListViweState();
}

class _ColorListViweState extends State<ColorListViwe> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34 * 2,
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 7,
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentindex = index;
                  BlocProvider.of<AddNotesCubit>(context).color =
                      kColors[index];
                });
              },
              child: CutsoumColor(
                color: kColors[index],
                isActive: currentindex == index,
              ),
            );
          }),
    );
  }
}

class EditNoteColor extends StatefulWidget {
  const EditNoteColor({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColor> createState() => _EditNoteColorState();
}

class _EditNoteColorState extends State<EditNoteColor> {
  late int currentindex;

  @override
  void initState() {
    currentindex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34 * 2,
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 7,
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentindex = index;
                  widget.note.color = kColors[index].value;
                });
              },
              child: CutsoumColor(
                color: kColors[index],
                isActive: currentindex == index,
              ),
            );
          }),
    );
  }
}
