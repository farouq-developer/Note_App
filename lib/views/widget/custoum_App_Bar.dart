import 'package:flutter/widgets.dart';
import 'package:note_app/views/widget/custoum_icon_serach.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.titlel, required this.icon, this.onPressed});
  final String titlel;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titlel,
          style: const TextStyle(fontSize: 25),
        ),
        CoustomIconSerach(
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}
