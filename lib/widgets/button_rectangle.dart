import 'package:dileepabandara_me/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ButtonRectangle extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;
  final Color color;

  const ButtonRectangle(
      {Key? key,
      required this.name,
      required this.onPressed,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: AppThemeData.textWhite,
            minimumSize: const Size(170.0, 50.0),
            textStyle: Theme.of(context).textTheme.titleMedium,
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0))),
        child: Text(name));
  }
}
