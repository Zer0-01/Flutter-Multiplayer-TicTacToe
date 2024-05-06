// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPress;
  final String label;

  const CustomButton({super.key, required this.onPress, required this.label});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.red, blurRadius: 5, spreadRadius: 0),
      ]),
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(minimumSize: Size(width, 50)),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
