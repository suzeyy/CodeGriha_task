import 'package:codegriha_task/utils/route_constants.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(16),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text('Click here to open Sliders'),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(RouteConstants.sliderRoute);
                },
              ),
              SizedBox(height: 20),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(16),
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text('Click here to open Check Boxes'),
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(RouteConstants.checkBoxesRoute);
                },
              ),
              SizedBox(height: 20),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(16),
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text('Click here to open Badges'),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(RouteConstants.badgesRoute);
                },
              ),
              SizedBox(height: 20),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(16),
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text('Click here to open Avatars'),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(RouteConstants.avatarRoute);
                },
              ),
              SizedBox(height: 20),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(16),
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text('Click here to open Progress Indicator'),
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(RouteConstants.progressIndicatorsRoute);
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
