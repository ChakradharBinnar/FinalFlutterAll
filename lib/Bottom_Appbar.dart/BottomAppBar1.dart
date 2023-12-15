import 'package:flutter/material.dart';

class BottomAppBar1 extends StatefulWidget {
  const BottomAppBar1({super.key});

  @override
  State<BottomAppBar1> createState() => _BottomAppBar1State();
}

class _BottomAppBar1State extends State<BottomAppBar1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: double.infinity,
        height: 91,
        color: const Color.fromARGB(255, 9, 21, 31),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 100,
              ),
              Container(
                width: 250,
                height: 41,
                child: Text(
                  "Subscribe Newsletter",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Container(
                width: 585,
                height: 38,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(3),
                      topLeft: Radius.circular(3)),
                  color: Colors.white,
                ),
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 5, left: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Email Address", border: InputBorder.none),
                  ),
                ),
              ),
              Container(
                  width: 119,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(3),
                        topRight: Radius.circular(3)),
                    color: Colors.green[700],
                  ),
                  child: InkWell(
                      onTap: () {},
                      child: Center(
                        child: Text("Subscribe now",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ))),
              const SizedBox(
                width: 100,
              ),
              Icon(
                Icons.phone_iphone,
                color: Colors.white,
                size: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "0 706 666 0033",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
