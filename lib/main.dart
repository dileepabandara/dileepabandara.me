import 'package:dileepabandara_me/mobile/mobile_frame_1.dart';
import 'package:flutter/material.dart';

import 'desktop/desktop_frame_1.dart';
import 'desktop/desktop_frame_2.dart';
import 'desktop/desktop_frame_3.dart';
import 'desktop/desktop_frame_4.dart';
import 'desktop/desktop_frame_5.dart';
import 'desktop/desktop_frame_6.dart';
import 'desktop/desktop_frame_7.dart';
import 'desktop/desktop_frame_8.dart';
import 'theme/responsive_screen_provider.dart';
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
  bool _showBackToTopButton = false;
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= 300) {
            _showBackToTopButton = true;
          } else {
            _showBackToTopButton = false;
          }
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 1000), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    Widget desktopUI() {
      return ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: const [
          DesktopFrame1(),
          DesktopFrame2(),
          DesktopFrame3(),
          DesktopFrame4(),
          DesktopFrame5(),
          DesktopFrame6(),
          DesktopFrame7(),
          SizedBox(height: 80),
          DesktopFrame8(),
        ],
      );
    }

    Widget mobileUI() {
      return const MobileFrame1();
    }

    return Scaffold(
      body: SingleChildScrollView(
          controller: _scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          child: Container(
            color: AppThemeData.backgroundGrey,
            child: ResponsiveScreenProvider.isDesktopScreen(context)
                ? desktopUI()
                : mobileUI(),
          )),
      floatingActionButton: _showBackToTopButton == false
          ? null
          : FloatingActionButton(
              onPressed: _scrollToTop,
              tooltip: 'Go to top',
              backgroundColor: AppThemeData.buttonPrimary,
              foregroundColor: AppThemeData.iconSecondary,
              child: const Icon(Icons.arrow_upward_rounded),
            ),
    );
  }
}

/// TODO: Expandable FAB
/// TODO: frame 2
/// TODO: frame 3
/// TODO: frame 4
/// TODO: frame 5
/// TODO: frame 6
/// TODO: frame 7
/// TODO: frame 8
/// TODO: Check the responsiveness
/// TODO: Update mobile UI
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
