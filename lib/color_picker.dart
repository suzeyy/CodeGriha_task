import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPickers extends StatefulWidget {
  const ColorPickers({super.key});

  @override
  State<ColorPickers> createState() => _ColorPickersState();
}

class _ColorPickersState extends State<ColorPickers> {
  Color mycolor = Colors.lightBlue;
  Color myMaterialColor = Colors.lightGreen;
  Color myBlockColor = Colors.redAccent;
  List<Color> multiColors = [Colors.greenAccent, Colors.blueAccent];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Color Picker'),
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the previous page
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Pick a color!'),
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            pickerColor: mycolor, //default color
                            onColorChanged: (Color color) {
                              //on color picked
                              setState(() {
                                mycolor = color;
                              });
                            },
                          ),
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            child: const Text('DONE'),
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(); //dismiss the color picker
                            },
                          ),
                        ],
                      );
                    });
              },
              child: const Text("Default Color Picker"),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Default Colour Picker Value $mycolor'),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Pick a material color!'),
                        content: SingleChildScrollView(
                          child: MaterialPicker(
                            pickerColor: myMaterialColor, //default color
                            onColorChanged: (Color color) {
                              //on the color picked
                              setState(() {
                                myMaterialColor = color;
                              });
                            },
                          ),
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            child: const Text('DONE'),
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(); //dismiss the color picker
                            },
                          ),
                        ],
                      );
                    });
              },
              child: const Text("Material Color Picker"),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Material Colour Picker Value $myMaterialColor'),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Pick a block color!'),
                        content: SingleChildScrollView(
                          child: BlockPicker(
                            pickerColor: myBlockColor, //default color
                            onColorChanged: (Color color) {
                              //on the color picked
                              setState(() {
                                myBlockColor = color;
                              });
                            },
                          ),
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            child: const Text('DONE'),
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(); //dismiss the color picker
                            },
                          ),
                        ],
                      );
                    });
              },
              child: const Text("Block Color Picker"),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Block Colour Picker Value $myBlockColor'),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Pick a color!'),
                        content: SingleChildScrollView(
                          child: MultipleChoiceBlockPicker(
                            pickerColors: multiColors, //default color
                            onColorsChanged: (List<Color> colors) {
                              //on colors picked
                              setState(() {
                                multiColors = colors;
                              });
                            },
                          ),
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            child: const Text('DONE'),
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(); //dismiss the color picker
                            },
                          ),
                        ],
                      );
                    });
              },
              child: const Text("Multiple Choice Color Picker"),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Multi-Colour Picker Value ${multiColors.length}'),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
