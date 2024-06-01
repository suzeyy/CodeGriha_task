import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProgressIndicators extends StatelessWidget {
  const ProgressIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Indicator'),
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the previous page
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              new CircularPercentIndicator(
                radius: 60,
                lineWidth: 5.0,
                percent: 0.0,
                center: new Text('0%'),
              ),
              SizedBox(height: 20),
              new CircularPercentIndicator(
                radius: 60,
                lineWidth: 5.0,
                percent: 0.25,
                center: new Text('25%'),
                progressColor: Colors.purple,
              ),
              SizedBox(height: 20),
              new CircularPercentIndicator(
                radius: 60,
                lineWidth: 5.0,
                percent: 0.50,
                center: new Text('50%'),
                progressColor: Colors.purple,
              ),
              SizedBox(height: 20),
              new CircularPercentIndicator(
                radius: 60,
                lineWidth: 5.0,
                percent: 0.75,
                center: new Text('75%'),
                progressColor: Colors.purple,
              ),
              SizedBox(height: 20),
              new CircularPercentIndicator(
                radius: 60,
                lineWidth: 5.0,
                percent: 1.0,
                center: new Text('100%'),
                progressColor: Colors.purple,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
