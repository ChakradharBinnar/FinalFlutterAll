import 'package:final_local_shouts/homePage.dart';
import 'package:final_local_shouts/scrollable.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
home: HomePage(),
scrollBehavior: MyCustomScrollBehavior()
  ));
}