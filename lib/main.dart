import 'package:dileepabandara_me/theme/responsive_screen_provider.dart';
import 'package:flutter/material.dart';

import 'desktop/desktop_frame1.dart';
import 'desktop/desktop_frame8.dart';
import 'mobile/mobile_frame1.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dileepa Bandara',
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.darkTheme,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget desktopUI() {
      return Column(
        children: const [
          DesktopFrame1(),
          SizedBox(
            height: 80,
          ),
          DesktopFrame8(),
        ],
      );
    }

    Widget mobileUI() {
      return Column(
        children: const [
          MobileFrame1(),
          SizedBox(
            height: 80,
          ),
          DesktopFrame8(),
        ],
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            color: AppThemeData.backgroundGrey,
            child: ResponsiveScreenProvider.isDesktopScreen(context)
                ? desktopUI()
                : mobileUI(),
          )),
    );
  }
}

/// TODO: frame 1
/// TODO: frame 2
/// TODO: frame 3
/// TODO: frame 4
/// TODO: frame 5
/// TODO: frame 6
/// TODO: frame 7
/// TODO: frame 8
/// TODO: Check the responsiveness
/// TODO: Check the performance
/// TODO: Check the code quality
/// TODO: Check the code coverage
/// TODO: Check the code complexity
/// TODO: Check the code duplication
/// TODO: Check the code maintainability
/// TODO: Check the code security
/// TODO: Check the code style
/// TODO: Check the code testability
/// TODO: Check the code test coverage
/// TODO: Check the user experience
/// TODO: Update the README.md
/// TODO: Generate the documentation
/// TODO: Create the release
/// TODO: Create the community guidelines
