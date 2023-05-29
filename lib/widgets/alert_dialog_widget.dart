import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({
    super.key,
    required this.title,
    required this.content,
    required this.textBtn,
  });

  final String title;
  final String content;
  final String textBtn;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        TextButton(
          child: Text(textBtn),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
