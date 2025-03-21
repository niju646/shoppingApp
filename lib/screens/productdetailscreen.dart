import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetailScreen extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const ProductDetailScreen({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 450,
              width: MediaQuery.of(context).size.width,
              child: FanCarouselImageSlider.sliderType1(
                  sliderHeight: 430,
                  autoPlay: true,
                  initalPageIndex: 0,
                  imagesLink: [image, image],
                  isAssets: true),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                      child: Text(
                        name,
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "\$$price",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xFFDB3022)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 25,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                
                },
              ),
              
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("What you wear is how you present yourself to the world, especially today, when human contacts are so quick. Fashion is instant language." "Fashion should be a form of escapism, and not a form of imprisonment." "Fashion is like eating; You shouldn't stick to the same menu",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black54,
              ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,width: 60,
                  decoration: BoxDecoration(
                    color: Color(0x1F989797),
                    borderRadius: BorderRadius.circular(30),

                  ),
                  child: Center(
                    child: Icon(Icons.shopping_cart,color: Colors.red,),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    ));
  }
}
