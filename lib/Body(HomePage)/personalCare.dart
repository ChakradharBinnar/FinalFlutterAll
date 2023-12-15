import 'package:final_local_shouts/Body(HomePage)/personalCareScrollView/personalCareScrollView.dart';
import 'package:flutter/material.dart';

class PersonalCare extends StatefulWidget {
  const PersonalCare({super.key});

  @override
  State<PersonalCare> createState() => _PersonalCareState();
}

class _PersonalCareState extends State<PersonalCare> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 2,
        child: Container(
          width: 1336,
          height: 370,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: const Text(
                        "Personal Care",
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
                    ),
                  ],
                ),
              ),
                Container(
                height: 310,
                width: double.infinity,
                child: const PersonalCareScrollView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}