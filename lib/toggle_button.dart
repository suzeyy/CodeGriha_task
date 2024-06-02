import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;

  void _toggleSwitch1(bool value) {
    setState(() {
      isSwitched1 = value;
    });
  }

  void _toggleSwitch2(bool value) {
    setState(() {
      isSwitched2 = value;
    });
  }

  void _toggleSwitch3(bool value) {
    setState(() {
      isSwitched3 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toggle Buttons'),
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
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Switch(
            value: isSwitched1,
            onChanged: _toggleSwitch1,
            activeTrackColor: Colors.purple,
            activeColor: Colors.white,
          ),
          SizedBox(height: 20),
          Switch(
            value: isSwitched2,
            onChanged: _toggleSwitch2,
            activeTrackColor: Color.fromARGB(232, 223, 221, 221),
            activeColor: Colors.purple,
          ),
          SizedBox(height: 20),
          CustomToggleButton(),
        ],
      )),
    );
  }
}

class CustomToggleButton extends StatefulWidget {
  const CustomToggleButton({super.key});

  @override
  State<CustomToggleButton> createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  bool isSwitched3 = false;

  void _toggleSwitch3(bool value) {
    setState(() {
      isSwitched3 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          _toggleSwitch3(!isSwitched3);
        },
        child: Container(
          width: 50,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: isSwitched3 ? Colors.purple : Colors.grey,
          ),
          child: Stack(
            children: [
              AnimatedAlign(
                duration: Duration(milliseconds: 250),
                curve: Curves.easeInOut,
                alignment:
                    isSwitched3 ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(right: 5, left: 5),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Center(
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: 250),
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                        return ScaleTransition(child: child, scale: animation);
                      },
                      child: isSwitched3
                          ? Icon(
                              Icons.check,
                              key: ValueKey('check'),
                              color: Colors.purple,
                              size: 15,
                            )
                          : Icon(
                              Icons.close,
                              key: ValueKey('close'),
                              color: Colors.grey,
                              size: 15,
                            ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
