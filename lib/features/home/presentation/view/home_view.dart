import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 300.h,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  buildCarouselItem("assets/images/test.jpg"),
                  buildCarouselItem("assets/images/test.jpg"),
                  buildCarouselItem("assets/images/test.jpg"),
                  buildCarouselItem("assets/images/test.jpg"),
                ],
              ),
              SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 4, // Replace with the actual count of items
                itemBuilder: (BuildContext context, int index) {
                  return buildGridItem("assets/images/test.jpg");
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }

  buildCarouselItem(String image) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10.r), child: Image.asset(image));
  }
  Widget buildGridItem(String image) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text("the name of the product"),
        Text("price",style: TextStyle(
          color: Colors.blue,
        )),
      ],

    );
  }
}
