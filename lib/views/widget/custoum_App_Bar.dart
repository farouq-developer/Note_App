import 'package:flutter/widgets.dart';
import 'package:note_app/views/widget/custoum_icon_serach.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 25),
        ),
        CoustomIconSerach()
      ],
    );
  }
}
