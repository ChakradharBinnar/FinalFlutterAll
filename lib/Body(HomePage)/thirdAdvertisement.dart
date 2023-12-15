import 'package:flutter/material.dart';

class ThirdAdvertisement extends StatefulWidget {
  const ThirdAdvertisement({super.key});

  @override
  State<ThirdAdvertisement> createState() => _ThirdAdvertisementState();
}

class _ThirdAdvertisementState extends State<ThirdAdvertisement> {
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
                              "https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/cookingessentials.jpg")),
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
                            "https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/Celebrate - Canva Banner.png")),
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
