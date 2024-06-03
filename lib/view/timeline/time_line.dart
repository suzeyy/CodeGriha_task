import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class TimeLineScreen extends StatelessWidget {
  const TimeLineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timelines'),
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the previous page
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Timeline.tileBuilder(
        scrollDirection: Axis.horizontal,
        builder: TimelineTileBuilder.fromStyle(
          contentsAlign: ContentsAlign.basic,
          contentsBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text('Codegriha Event $index'),
          ),
          itemCount: 15,
        ),
      ),
    );
  }
}
