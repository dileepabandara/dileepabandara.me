import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import 'button_rectangle.dart';
import 'button_text.dart';

class NavBar {
  Widget desktopNavBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonText(text: 'About Me', onPressed: () {}),
        const SizedBox(width: 20.0),
        ButtonText(text: 'Experience', onPressed: () {}),
        const SizedBox(width: 20.0),
        ButtonText(text: 'Volunteering', onPressed: () {}),
        const SizedBox(width: 20.0),
        ButtonText(text: 'Blog', onPressed: () {}),
        const SizedBox(width: 20.0),
        ButtonRectangle(
            name: "Contact Me",
            onPressed: () {},
            color: AppThemeData.buttonPrimary),
      ],
    );
  }

  Widget mobileNavBar() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonText(text: 'About Me', onPressed: () {}),
            const SizedBox(width: 20.0),
            ButtonText(text: 'Experience', onPressed: () {}),
            const SizedBox(width: 20.0),
            ButtonText(text: 'Volunteering', onPressed: () {}),
          ],
        ),
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonText(text: 'Blog', onPressed: () {}),
            const SizedBox(width: 20.0),
            ButtonRectangle(
                name: "Contact Me",
                onPressed: () {},
                color: AppThemeData.buttonPrimary),
          ],
        ),
      ],
    );
  }
}
