import 'package:flutter/material.dart';

import 'frames/frame1.dart';
import 'frames/frame8.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            color: AppThemeData.backgroundGrey,
            child: Column(
              children: const [
                Frame1(),
                SizedBox(
                  height: 80,
                ),
                Frame8(),
              ],
            ),
          )),
    );
  }
}
