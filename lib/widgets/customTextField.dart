// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_multiplayer_tictactoe/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomTextField(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
            blurRadius: 5,
            spreadRadius: 4,
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          fillColor: backgroundColor,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
