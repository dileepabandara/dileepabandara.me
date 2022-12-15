import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/constant_values.dart';


import '../theme/app_theme.dart';

class Frame8 extends StatelessWidget {
  const Frame8({Key? key}) : super(key: key);

  Widget getSourceCode(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          launchUrl(ConstantValues.repoURL);
        },
        child: Tooltip(
          message: ConstantValues.repoURL.toString(),
          child: Text(
            'Get Source Code',
            style: TextStyle(
              color: AppThemeData.textPrimary,
              fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
              fontWeight: Theme.of(context).textTheme.bodyMedium!.fontWeight,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppThemeData.backgroundBlack,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SelectableText(
                ConstantValues.builtWith,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                width: 5,
              ),
              getSourceCode(context),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SelectableText(
            ConstantValues.copyright,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
