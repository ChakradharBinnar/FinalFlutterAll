import 'package:final_local_shouts/TopAppbar_And_MenuBar/Upload_to_Grocery_Pages/uploadToGroceryPage.dart';
import 'package:flutter/material.dart';

class topAppBar extends StatefulWidget {
  const topAppBar({super.key});

  @override
  State<topAppBar> createState() => _topAppBarState();
}

class _topAppBarState extends State<topAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: double.infinity,
        height: 91,
        color: Color.fromARGB(255, 15, 35, 51),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 100,
              ),
              Container(
                width: 174,
                height: 41,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://localshouts.com/assets/images/logo.png'),
                    fit: BoxFit.cover,
                  ),
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
                        hintText: "Product Search", border: InputBorder.none),
                  ),
                ),
              ),
              Container(
                  width: 68,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(3),
                        topRight: Radius.circular(3)),
                    color: Colors.green[700],
                  ),
                  child: InkWell(
                      onTap: () {},
                      child: const Center(
                        child: Text("Search",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ))),
              const SizedBox(
                width: 20,
              ),
              Container(
                  width: 179,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.green[500],
                      borderRadius: BorderRadius.circular(3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.shopping_basket,
                            color: Colors.white,
                          )),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const UploadToGrocery(),
                                ));
                          },
                          child: const Text("Upload Grocery List",
                              style: TextStyle(
                                color: Colors.white,
                              )))
                    ],
                  )),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 179,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.yellow[800],
                  borderRadius: BorderRadius.circular(3),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.file_present_outlined,
                      color: Colors.white,
                    ),
                    Center(
                        child: Text("Upload Prescription",
                            style: TextStyle(
                              color: Colors.white,
                            )))
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 45,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_outline_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 45,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
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
