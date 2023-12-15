import 'package:final_local_shouts/Body(HomePage)/dryFruitsScrollview/dryFruitsScrollView.dart';
import 'package:flutter/material.dart';

class DryFruits extends StatefulWidget {
  const DryFruits({super.key});

  @override
  State<DryFruits> createState() => _DryFruitsState();
}

class _DryFruitsState extends State<DryFruits> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 2,
        child: Container(
          width: 1336,
          height: 361,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: const Text(
                        "Dry Fruits",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 91,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 9, 21, 31),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Center(
                            child: Text(
                          "View All",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                    )
                  ],
                ),
              ),

              Container(
                height: 305,
                width: double.infinity,
                child: const dryFruitsScrollView(),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}