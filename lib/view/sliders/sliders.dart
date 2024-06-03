import 'package:flutter/material.dart';

class Sliders extends StatefulWidget {
  const Sliders({super.key});

  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  double _firstEnabledSliderValue = 0;
  double _secondEnabledSliderValue = 25;
  double _thirdEnabledSliderValue = 50;
  double _fourthEnabledSliderValue = 75;

  final double _firstDisabledSliderValue = 0;
  final double _secondDisabledSliderValue = 25;
  final double _thirdDisabledSliderValue = 50;
  final double _fourthDisabledSliderValue = 75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Slider'),
          backgroundColor: Colors.grey,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Navigate back to the previous page
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Text("Enabled Sliders",
                      style: TextStyle(fontWeight: FontWeight.bold))),
              Slider(
                value: _firstEnabledSliderValue,
                max: 100,
                divisions: 4,
                label: _firstEnabledSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _firstEnabledSliderValue = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Slider(
                value: _secondEnabledSliderValue,
                max: 100,
                divisions: 4,
                label: _secondEnabledSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _secondEnabledSliderValue = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Slider(
                value: _thirdEnabledSliderValue,
                max: 100,
                divisions: 4,
                label: _thirdEnabledSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _thirdEnabledSliderValue = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Slider(
                value: _fourthEnabledSliderValue,
                max: 100,
                divisions: 4,
                label: _fourthEnabledSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _fourthEnabledSliderValue = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Center(
                  child: Text(
                "Disabled Sliders",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              Slider(
                value: _firstDisabledSliderValue,
                max: 100,
                divisions: 4,
                label: _firstDisabledSliderValue.round().toString(),
                onChanged: null,
              ),
              SizedBox(height: 20),
              Slider(
                value: _secondDisabledSliderValue,
                max: 100,
                divisions: 4,
                label: _secondDisabledSliderValue.round().toString(),
                onChanged: null,
              ),
              SizedBox(height: 20),
              Slider(
                value: _thirdDisabledSliderValue,
                max: 100,
                divisions: 4,
                label: _thirdDisabledSliderValue.round().toString(),
                onChanged: null,
              ),
              SizedBox(height: 20),
              Slider(
                value: _fourthDisabledSliderValue,
                max: 100,
                divisions: 4,
                label: _fourthDisabledSliderValue.round().toString(),
                onChanged: null,
              ),
            ],
          ),
        ));
  }
}
