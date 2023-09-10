import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custoum_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final List<Color> colorthem = const [
    Color(0xffFFcc80),
    Colors.red,
    Colors.blue,
    Colors.orange
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustoumItem(
                concolor: colorthem[index],
              ),
            );
          }),
    );
  }
}
