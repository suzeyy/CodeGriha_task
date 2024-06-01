import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class Badges extends StatelessWidget {
  const Badges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Badges'),
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
            badges.Badge(
              badgeContent: Text('3'),
              child: Icon(Icons.settings, size: 48),
            ),
            SizedBox(height: 20),
            badges.Badge(
              position: badges.BadgePosition.topEnd(top: 0, end: 0),
              badgeStyle: badges.BadgeStyle(
                shape: badges.BadgeShape.circle,
                badgeColor: Colors.red,
                elevation: 0,
                padding: EdgeInsets.all(6),
              ),
              child: Icon(Icons.shopping_cart, size: 48),
            )
          ],
        ),
      ),
    );
  }
}
