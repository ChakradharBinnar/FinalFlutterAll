import 'package:flutter/material.dart';

class AllPageBabyCare extends StatefulWidget {
  const AllPageBabyCare({super.key});

  @override
  State<AllPageBabyCare> createState() => _AllPageBabyCareState();
}

class _AllPageBabyCareState extends State<AllPageBabyCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Hello i am all page")),
      );
  }
}