import 'package:codegriha_task/avatars.dart';
import 'package:codegriha_task/progress_indicator.dart';
import 'package:codegriha_task/utils/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:codegriha_task/splash.dart';
import 'package:codegriha_task/home.dart';
import 'package:codegriha_task/checkboxes.dart';
import 'package:codegriha_task/sliders.dart';
import 'package:codegriha_task/badges.dart';
import 'package:codegriha_task/avatars.dart';
import 'package:codegriha_task/progress_indicator.dart';

void main() {
  runApp(MaterialApp(
    title: 'CodeGriha Task',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    initialRoute: RouteConstants.rootRoute,
    routes: {
      RouteConstants.rootRoute: (context) => Splash(),
      RouteConstants.homeRoute: (context) => Home(),
      RouteConstants.sliderRoute: (context) => Sliders(),
      RouteConstants.checkBoxesRoute: (context) => CheckBoxes(),
      RouteConstants.badgesRoute: (context) => Badges(),
      RouteConstants.avatarRoute: (context) => Avatars(),
      RouteConstants.progressIndicatorsRoute: (context) => ProgressIndicators(),
    },
  ));
}
