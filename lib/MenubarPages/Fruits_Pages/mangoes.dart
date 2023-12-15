import 'package:flutter/material.dart';

class MangoesPage extends StatefulWidget {
  const MangoesPage({super.key});

  @override
  State<MangoesPage> createState() => _MangoesPageState();
}

class _MangoesPageState extends State<MangoesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(child: Text("Hello i am a Mangoes Page"),),
    );
  }
}