import 'package:flutter/material.dart';

class Avatars extends StatelessWidget {
  const Avatars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatars'),
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text('State=Image'),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.freepik.com/premium-ai-image/pink-flower-with-blurry-background_179628359.htm#query=beautiful%20flowers&position=13&from_view=keyword&track=ais_user&uuid=73b644e5-ba6f-4e57-9779-bbdf16b7e6c8'),
              ),
              SizedBox(height: 20),
              Text('State=Text'),
              CircleAvatar(
                backgroundColor: Colors.blueAccent.shade700,
                child: Text('HI', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 20),
              Text('State=Profile'),
              CircleAvatar(
                backgroundColor: Colors.blueAccent.shade700,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text('State=Selected'),
              CircleAvatar(
                backgroundColor: Colors.blueAccent.shade700,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
