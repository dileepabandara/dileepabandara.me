import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant_values.dart';
import '../responsive_screen_provider.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  Widget customIconButtons(String name, Uri url) {
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
      Image.asset('assets/images/logo.png', height: 250.0, width: 250.0),
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
              customIconButtons('dev', ConstantValues.devURL),
              const SizedBox(width: 8.0),
              customIconButtons('hashnode', ConstantValues.hashnodeURL),
              const SizedBox(width: 8.0),
              customIconButtons('github', ConstantValues.githubURL),
              const SizedBox(width: 8.0),
              customIconButtons('linkedin', ConstantValues.linkedinURL),
              const SizedBox(width: 8.0),
              customIconButtons('twitter', ConstantValues.twitterURL),
              const SizedBox(width: 8.0),
              customIconButtons('youtube', ConstantValues.youtubeURL),
              const SizedBox(width: 8.0),
              customIconButtons('telegram', ConstantValues.telegramURL),
              const SizedBox(width: 8.0),
              customIconButtons('facebook', ConstantValues.facebookURL),
              const SizedBox(width: 8.0),
              customIconButtons('instagram', ConstantValues.instagramURL),
            ],
          ),
        ],
      ),
    ];
  }

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

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
        child: ResponsiveScreenProvider.isDesktopScreen(context)
            ? desktop(context)
            : mobile(context));
  }
}
