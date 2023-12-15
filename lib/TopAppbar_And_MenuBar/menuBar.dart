import 'package:final_local_shouts/MenubarPages/Fruits_Pages/all.dart';
import 'package:final_local_shouts/MenubarPages/Fruits_Pages/apple.dart';
import 'package:final_local_shouts/MenubarPages/Fruits_Pages/mangoes.dart';
import 'package:final_local_shouts/homePage.dart';
import 'package:flutter/material.dart';

class secondaryMenuBar extends StatefulWidget {
  const secondaryMenuBar({super.key});

  @override
  State<secondaryMenuBar> createState() => _secondaryMenuBarState();
}

class _secondaryMenuBarState extends State<secondaryMenuBar> {
  var selectedItem = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
          Container(
                    width: double.infinity,
                    height: 42,
                    color: Colors.white,
                    child: Card(
                      elevation: 12,
                      shadowColor: Colors.grey,
                      child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) => const HomePage(),
                                                    ));
                                  },
                                  child: const Text(
                                    "Home",
                                    style: TextStyle(color: Colors.black, fontSize: 16),
                                  )),
                                      
                                     
                                      
                              PopupMenuButton(
                                  onSelected: (value) {
                                    // your logic
                                    setState(() {
                                      selectedItem = value.toString();
                                    });
                                    print(value);
                                    Navigator.pushNamed(context, value.toString());
                                  },
                                  itemBuilder: (BuildContext bc) {
                                    return [
                                      PopupMenuItem(
                                          child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) => const AllPageFruits(),
                                                    ));
                                              },
                                              child: const Text("All"))),
                                      PopupMenuItem(
                                        child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) => const ApplePage(),
                                                  ));
                                            },
                                            child: const Text("Apples")),
                                      ),
                                      PopupMenuItem(
                                        child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) => const MangoesPage(),
                                                  ));
                                            },
                                            child: const Text("Mangoes")),
                                      )
                                    ];
                                  },
                                  child: const Text("Fruits >",
                                      style: TextStyle(color: Colors.black, fontSize: 16))),
                                      
                              PopupMenuButton(
                                  onSelected: (value) {
                                    // your logic
                                    setState(() {
                                      selectedItem = value.toString();
                                    });
                                    print(value);
                                    Navigator.pushNamed(context, value.toString());
                                  },
                                  itemBuilder: (BuildContext bc) {
                                    return const [
                                      PopupMenuItem(
                                        child: Text("All"),
                                        value: '/hello',
                                      ),
                                      PopupMenuItem(
                                        child: Text("Himalaya-Products"),
                                        value: '/about',
                                      ),
                                      PopupMenuItem(
                                        child: Text("Johnsons-Baby"),
                                        value: '/contact',
                                      )
                                    ];
                                  },
                                  child: const Text("Baby-Care >",
                                      style: TextStyle(color: Colors.black, fontSize: 16))),
                                      
                              PopupMenuButton(
                                  onSelected: (value) {
                                    // your logic
                                    setState(() {
                                      selectedItem = value.toString();
                                    });
                                    print(value);
                                    Navigator.pushNamed(context, value.toString());
                                  },
                                  itemBuilder: (BuildContext bc) {
                                    return const [
                                      PopupMenuItem(
                                        child: Text("All"),
                                        value: '/hello',
                                      ),
                                      PopupMenuItem(
                                        child: Text("Salt-Spices-And-Masala"),
                                        value: '/about',
                                      ),
                                      PopupMenuItem(
                                        child: Text("Oil-Ghee"),
                                        value: '/contact',
                                      ),
                                       PopupMenuItem(
                                        child: Text("Atta-And-Flours"),
                                        value: '/contact',
                                      ),
                                       PopupMenuItem(
                                        child: Text("Grains-Cereals-And-Pulses"),
                                        value: '/contact',
                                      ),
                                    ];
                                  },
                                  child: const Text("Cooking-Essentials >",
                                      style: TextStyle(color: Colors.black, fontSize: 16))),
                                      
                              PopupMenuButton(
                                  onSelected: (value) {
                                    // your logic
                                    setState(() {
                                      selectedItem = value.toString();
                                    });
                                    print(value);
                                    Navigator.pushNamed(context, value.toString());
                                  },
                                  itemBuilder: (BuildContext bc) {
                                    return const [
                                      PopupMenuItem(
                                        child: Text("All"),
                                      ),
                                      PopupMenuItem(
                                        child: Text("Soaps-Handwashes"),
                                      ),
                                      PopupMenuItem(
                                        child: Text("Hair-Care"),
                                      ),
                                      PopupMenuItem(
                                        child: Text("Facewash"),
                                      ),
                                      PopupMenuItem(
                                        child: Text("Tooth-Paste"),
                                      ),
                                    ];
                                  },
                                  child: const Text("Personal Care >",
                                      style: TextStyle(color: Colors.black, fontSize: 16))),
                                      
                              PopupMenuButton(
                                  onSelected: (value) {
                                    // your logic
                                    setState(() {
                                      selectedItem = value.toString();
                                    });
                                    print(value);
                                    Navigator.pushNamed(context, value.toString());
                                  },
                                  itemBuilder: (BuildContext bc) {
                                    return const [
                                      PopupMenuItem(
                                        child: Text("All"),
                                        value: '/hello',
                                      ),
                                      PopupMenuItem(
                                        child: Text("Detergent"),
                                        value: '/about',
                                      ),
                                      PopupMenuItem(
                                        child: Text("Dishwashing-Supplies"),
                                        value: '/contact',
                                      ),
                                       PopupMenuItem(
                                        child: Text("Toilet-And-Floor-Cleaners"),
                                        value: '/contact',
                                      )
                                    ];
                                  },
                                  child: const Text("Household & Pets >",
                                      style: TextStyle(color: Colors.black, fontSize: 16))),
                                      
                              PopupMenuButton(
                                  onSelected: (value) {
                                    // your logic
                                    setState(() {
                                      selectedItem = value.toString();
                                    });
                                    print(value);
                                    Navigator.pushNamed(context, value.toString());
                                  },
                                  itemBuilder: (BuildContext bc) {
                                    return const [
                                      PopupMenuItem(
                                        child: Text("All"),
                                        value: '/hello',
                                      ),
                                      PopupMenuItem(
                                        child: Text("Sauces-And-Spreads"),
                                        value: '/about',
                                      ),
                                      PopupMenuItem(
                                        child: Text("Noodles"),
                                        value: '/contact',
                                      ),
                                       PopupMenuItem(
                                        child: Text("Dairy-Products"),
                                        value: '/contact',
                                      )
                                    ];
                                  },
                                  child: const Text("Packaged Foods >",
                                      style: TextStyle(color: Colors.black, fontSize: 16))),
                             PopupMenuButton(
                                  onSelected: (value) {
                                    // your logic
                                    setState(() {
                                      selectedItem = value.toString();
                                    });
                                    print(value);
                                    Navigator.pushNamed(context, value.toString());
                                  },
                                  itemBuilder: (BuildContext bc) {
                                    return const [
                                      PopupMenuItem(
                                        child: Text("Vegetable"),
                                        value: '/hello',
                                      ),
                                      PopupMenuItem(
                                        child: Text("Dry-Fruits"),
                                        value: '/about',
                                      ),
                                       PopupMenuItem(
                                        child: Text("Diwali Special"),
                                        value: '/contact',
                                      ),
                                      PopupMenuItem(
                                        child: Text("Beverages"),
                                        value: '/contact',
                                      ),
                                    ];
                                  },
                                  child: const Text("More >",
                                      style: TextStyle(color: Colors.black, fontSize: 16))),
                            
                            ],
                          ),
                   
                    ),
          ),
    );
  }
}