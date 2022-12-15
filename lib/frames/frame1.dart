import 'dart:developer';

import 'package:dileepabandara_me/widgets/button_icon.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme/constant_values.dart';
import '../theme/responsive_screen_provider.dart';

class Frame1 extends StatelessWidget {
  const Frame1({Key? key}) : super(key: key);

  Widget customIconButton(String name, Uri url) {
    Future<void> openLink() async {
      if (!await launchUrl(url)) {
        throw 'Could not launch $url';
      }
      log("Direct to: $url");
    }

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: openLink,
        child: Tooltip(
            message: url.toString(),
            child: Image.asset('assets/icons/$name.png',
                height: 24.0, width: 24.0)),
      ),
    );
  }

  List<Widget> headerData(BuildContext context) {
    return [
      Image.asset('assets/images/logo.png', height: 200.0, width: 200.0),
      ResponsiveScreenProvider.isDesktopScreen(context)
          ? const SizedBox(width: 40.0)
          : const SizedBox(height: 40.0),
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
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonIcon(name: 'dev', url: ConstantValues.devURL)
                  .returnButton(),
              const SizedBox(width: 8.0),
              ButtonIcon(name: 'hashnode', url: ConstantValues.hashnodeURL)
                  .returnButton(),
              const SizedBox(width: 8.0),
              ButtonIcon(name: 'github', url: ConstantValues.githubURL)
                  .returnButton(),
              const SizedBox(width: 8.0),
              ButtonIcon(name: 'linkedin', url: ConstantValues.linkedinURL)
                  .returnButton(),
              const SizedBox(width: 8.0),
              ButtonIcon(name: 'twitter', url: ConstantValues.twitterURL)
                  .returnButton(),
              const SizedBox(width: 8.0),
              ButtonIcon(name: 'youtube', url: ConstantValues.youtubeURL)
                  .returnButton(),
              const SizedBox(width: 8.0),
              ButtonIcon(name: 'telegram', url: ConstantValues.telegramURL)
                  .returnButton(),
              const SizedBox(width: 8.0),
              ButtonIcon(name: 'facebook', url: ConstantValues.facebookURL)
                  .returnButton(),
              const SizedBox(width: 8.0),
              ButtonIcon(name: 'instagram', url: ConstantValues.instagramURL)
                  .returnButton(),
            ],
          ),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    Widget desktop(BuildContext context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: headerData(context),
      );
    }

    Widget mobile(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: headerData(context),
      );
    }

    return Padding(
        padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
        child: ResponsiveScreenProvider.isDesktopScreen(context)
            ? desktop(context)
            : mobile(context));
  }
}
