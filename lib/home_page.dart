import './app_theme.dart';
import './widgets/footer.dart';

import 'widgets/header.dart';
import 'package:flutter/material.dart';

import 'widgets/body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            color: AppThemeData.backgroundLight,
            child: Column(
              children: const [
                Header(),
                Body(),
                SizedBox(
                  height: 80,
                ),
                Footer(),
              ],
            ),
          )),
    );
  }
}
