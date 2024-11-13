import 'package:flutter/material.dart';
import 'package:mini_todo/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              autofocus: true,
              controller: controller,
              decoration: InputDecoration(
                  hintText: 'Todo...',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(onPressed: onCancel, text: 'Cancel'),
                MyButton(onPressed: onSave, text: 'Save'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
