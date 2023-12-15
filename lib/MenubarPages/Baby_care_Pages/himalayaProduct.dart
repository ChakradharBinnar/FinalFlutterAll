import 'package:flutter/material.dart';

class HimalayaProduct extends StatefulWidget {
  const HimalayaProduct({super.key});

  @override
  State<HimalayaProduct> createState() => _HimalayaProductState();
}

class _HimalayaProductState extends State<HimalayaProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Hello i am Himalaya Product Page")),
    );
  }
}