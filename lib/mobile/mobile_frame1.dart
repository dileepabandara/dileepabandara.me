import 'dart:developer';

import 'package:dileepabandara_me/widgets/button_text.dart';
import 'package:dileepabandara_me/widgets/social_profiles.dart';
import 'package:flutter/material.dart';

import '../theme/constant_values.dart';
import '../theme/responsive_screen_provider.dart';
import '../widgets/nav_bar.dart';

class MobileFrame1 extends StatelessWidget {
  const MobileFrame1({Key? key}) : super(key: key);

  List<Widget> headerData(BuildContext context) {
    return [
      Image.asset('assets/images/logo.png', height: 250.0, width: 250.0),
      const SizedBox(height: 60.0),
      Column(
        children: [
          SelectableText(
            ConstantValues.greetings,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SelectableText(
            ConstantValues.name,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          SelectableText(
            ConstantValues.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 20.0),
          const SocialProfiles(),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 60.0, bottom: 40.0),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: headerData(context),
            ),
            const SizedBox(height: 60.0),
            NavBar().mobileNavBar(),
          ],
        ));
  }
}
