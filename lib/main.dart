import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ticket/screens/bottom_bar.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:ticket/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},
      ),
      debugShowCheckedModeBanner: false,
      title: 'Here is the header',
      theme: ThemeData(
        //primaryColor: Styles.primaryColor,
        primaryColor: primary,
      ),
      home: kIsWeb ? const BottomBar() : const BottomBar(),
    );
  }
}
