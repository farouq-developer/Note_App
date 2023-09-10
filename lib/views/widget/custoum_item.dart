import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/views/edit_note_view.dart';

class CustoumItem extends StatelessWidget {
  CustoumItem({required this.concolor});
  var concolor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 16, left: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: concolor,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'creaate a new app with farouq mohammed',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.4), fontSize: 17),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Text(
              'may21 - 2023',
              style: TextStyle(color: Colors.black.withOpacity(.4)),
            ),
          ),
        ]),
      ),
    );
  }
}
