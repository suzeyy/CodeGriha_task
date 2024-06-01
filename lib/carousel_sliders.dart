import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSliders extends StatelessWidget {
  const CarouselSliders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Slider'),
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
            CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/1557652/pexels-photo-1557652.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/910012/pexels-photo-910012.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/1416900/pexels-photo-1416900.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/2516418/pexels-photo-2516418.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/1588137/pexels-photo-1588137.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 280,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            )
          ],
        ),
      ),
    );
  }
}
