import 'package:codegriha_task/avatars.dart';
import 'package:codegriha_task/carousel_sliders.dart';
import 'package:codegriha_task/color_picker.dart';
import 'package:codegriha_task/progress_indicator.dart';
import 'package:codegriha_task/radio_button.dart';
import 'package:codegriha_task/utils/route_constants.dart';
import 'package:codegriha_task/view/imagePicker/image_picker_screen.dart';
import 'package:codegriha_task/view/timeline/time_line.dart';
import 'package:flutter/material.dart';
import 'package:codegriha_task/splash.dart';
import 'package:codegriha_task/home.dart';
import 'package:codegriha_task/view/checkbox/checkboxes.dart';
import 'package:codegriha_task/view/sliders/sliders.dart';
import 'package:codegriha_task/badges.dart';
import 'package:codegriha_task/toggle_button.dart';

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
      RouteConstants.carouselSlidersRoute: (context) => CarouselSliders(),
      RouteConstants.toggleButtonRoute: (context) => ToggleButton(),
      RouteConstants.colorPickersRoute: (context) => ColorPickers(),
      RouteConstants.radioButtonRoute: (context) => RadioButtons(),
      RouteConstants.timeLineRoute: (context) => TimeLineScreen(),
      RouteConstants.imagePickerRoute: (context) => ImagePickerScreen(),
    },
  ));
}
