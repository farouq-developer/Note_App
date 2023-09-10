import 'package:flutter/material.dart';
import 'package:note_app/constans.dart';

class CustoumBottoum extends StatelessWidget {
  const CustoumBottoum({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: kPrimary),
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
