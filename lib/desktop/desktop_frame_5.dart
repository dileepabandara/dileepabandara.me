import 'package:flutter/material.dart';

import '../statics/key_holders.dart';
import '../theme/app_theme.dart';

class DesktopFrame5 extends StatelessWidget {
  const DesktopFrame5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.volunteeringKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Volunteering",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 500.0),
          ],
        ),
      ),
    );
  }
}
