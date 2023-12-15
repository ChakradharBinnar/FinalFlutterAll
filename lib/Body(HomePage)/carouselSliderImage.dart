import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_local_shouts/Body(HomePage)/ProductHighlightsScrollView/producthighlights.dart';
import 'package:final_local_shouts/Body(HomePage)/fruitsScrollview/FruitsScrollview.dart';
import 'package:flutter/material.dart';

class CarouselSliderImage extends StatefulWidget {
  const CarouselSliderImage({super.key});

  @override
  State<CarouselSliderImage> createState() => _CarouselSliderImageState();
}

class _CarouselSliderImageState extends State<CarouselSliderImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 543,
            child: ListView(
              children: [
                CarouselSlider(
                  items: [
                    //1st Image of Slider
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/1558098745packfood.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/1607003498banner7.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/ban3.1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //4th Image of Slider
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/1607003625banner1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 543,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 4 / 3,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 300),
                    viewportFraction: 1,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 330),
            child: Center(
              child: Card(
                elevation: 2,
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        width: 1336,
                        height: 370,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: const Column(
                                      children: [
                                        Text(
                                          "Product Highlights",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 91,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 9, 21, 31),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: const Center(
                                          child: Text(
                                        "View All",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const ProductHighlights(),
                          ],
                        ),
                      ),
                      Container(
                        width: 1336,
                        height: 370,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: const Text(
                                      "Fruits",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 91,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 9, 21, 31),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: const Center(
                                          child: Text(
                                        "View All",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 310,
                              width: double.infinity,
                              child: const FruitsScrollView(),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
