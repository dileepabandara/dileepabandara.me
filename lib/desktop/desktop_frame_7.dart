import 'package:flutter/material.dart';

import '../statics/key_holders.dart';
import '../theme/app_theme.dart';

class DesktopFrame7 extends StatelessWidget {
  const DesktopFrame7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.contactKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Contact",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 500.0),
          ],
        ),
      ),
    );
  }
}
