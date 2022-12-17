import 'package:flutter/material.dart';

import '../statics/key_holders.dart';
import '../theme/app_theme.dart';

class DesktopFrame4 extends StatelessWidget {
  const DesktopFrame4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        key: KeyHolders.experienceKey,
        color: AppThemeData.backgroundGrey,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Experience",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: 500.0),
              ],
            ),
          ),
        ));
  }
}
