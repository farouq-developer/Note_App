import 'package:flutter/material.dart';

class CoustomIconSerach extends StatelessWidget {
  const CoustomIconSerach({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(0.05)),
      child: Icon(
        icon,
        size: 25,
      ),
    );
  }
}
