import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ButtonText({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Go to $text section',
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
