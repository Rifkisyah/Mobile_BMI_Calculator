import 'dart:ui';
import 'package:bmi_calculator/view/bmi_view.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const RunApp());
}

class RunApp extends StatelessWidget {
  const RunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: ScrollConfiguration.of(context).copyWith(
        scrollbars: false,
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        }
      ),
      home: BodyMassIndexingView(),
    );
  }

}