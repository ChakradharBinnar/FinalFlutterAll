import 'package:flutter/material.dart';

class SecondAdvertisement extends StatefulWidget {
  const SecondAdvertisement({super.key});

  @override
  State<SecondAdvertisement> createState() => _SecondAdvertisementState();
}

class _SecondAdvertisementState extends State<SecondAdvertisement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 131.5),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                  elevation: 2,
                  child: Container(
                    width: 837.64,
                    height: 257.67,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image(
                          image: NetworkImage(
                              "https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/packaging%20food.jpg")),
                    ),
                  )),
              SizedBox(
                width: 20,
              ),
              Card(
                elevation: 2,
                child: Container(
                  width: 463.36,
                  height: 286.88,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image(
                          image: NetworkImage(
                              "https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/20200409_150759_0000.png")),
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
