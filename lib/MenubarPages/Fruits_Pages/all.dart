import 'package:flutter/material.dart';

class AllPageFruits extends StatefulWidget {
  const AllPageFruits({super.key});

  @override
  State<AllPageFruits> createState() => _AllPageFruitsState();
}

class _AllPageFruitsState extends State<AllPageFruits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Hello i am a All Page In Fruit"),),
    );
  }
}