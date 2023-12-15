import 'package:flutter/material.dart';

class firstAdvertisement extends StatefulWidget {
  const firstAdvertisement({super.key});

  @override
  State<firstAdvertisement> createState() => _firstAdvertisementState();
}

class _firstAdvertisementState extends State<firstAdvertisement> {
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
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Image(image: NetworkImage("https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/cookingessentials.jpg")),
                  ),
                )
              ),
              
          const SizedBox(width: 20,),
              Card(
                elevation: 2,
                child: Container(
                      width: 463.36,
                  height: 286.88,
                  color: Colors.white,
                
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Image(image: NetworkImage("https://d3eu3ryotbd0p5.cloudfront.net/localshouts/photos/banner_images/Celebrate - Canva Banner.png")),
                  ),
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}