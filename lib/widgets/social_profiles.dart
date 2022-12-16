import 'package:flutter/material.dart';

import '../theme/constant_values.dart';
import 'button_icon.dart';

class SocialProfiles extends StatelessWidget {
  const SocialProfiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonIcon(name: 'dev', url: ConstantValues.devURL).returnButton(),
        const SizedBox(width: 10.0),
        ButtonIcon(name: 'hashnode', url: ConstantValues.hashnodeURL)
            .returnButton(),
        const SizedBox(width: 10.0),
        ButtonIcon(name: 'github', url: ConstantValues.githubURL)
            .returnButton(),
        const SizedBox(width: 10.0),
        ButtonIcon(name: 'linkedin', url: ConstantValues.linkedinURL)
            .returnButton(),
        const SizedBox(width: 10.0),
        ButtonIcon(name: 'twitter', url: ConstantValues.twitterURL)
            .returnButton(),
        const SizedBox(width: 10.0),
        ButtonIcon(name: 'youtube', url: ConstantValues.youtubeURL)
            .returnButton(),
        const SizedBox(width: 10.0),
        ButtonIcon(name: 'telegram', url: ConstantValues.telegramURL)
            .returnButton(),
        const SizedBox(width: 10.0),
        ButtonIcon(name: 'facebook', url: ConstantValues.facebookURL)
            .returnButton(),
        const SizedBox(width: 10.0),
        ButtonIcon(name: 'instagram', url: ConstantValues.instagramURL)
            .returnButton(),
      ],
    );
  }
}
