import 'package:flutter/material.dart';

class UploadToGrocery extends StatefulWidget {
  const UploadToGrocery({super.key});

  @override
  State<UploadToGrocery> createState() => _UploadToGroceryState();
}

class _UploadToGroceryState extends State<UploadToGrocery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Hello i am upload to grocery"),)
    );
  }
}