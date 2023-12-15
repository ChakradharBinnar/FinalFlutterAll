import 'dart:convert';

import 'package:final_local_shouts/ModelClass/vegitablesModelClass.dart';
import 'package:final_local_shouts/Url/imgBaseUrl.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class VegitablesScrollView extends StatefulWidget {
  const VegitablesScrollView({super.key});

  @override
  State<VegitablesScrollView> createState() => _VegitablesScrollViewState();
}

class _VegitablesScrollViewState extends State<VegitablesScrollView> {
  Future<ProductsModelVegitables> getProductsApi() async {
    //create your own api
    final response = await http.get(Uri.parse(
        'https://localshouts.com/api/catProduct?category=vegetable'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return ProductsModelVegitables.fromJson(data);
    } else {
      return ProductsModelVegitables.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      child: FutureBuilder<ProductsModelVegitables>(
        future: getProductsApi(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.data!.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 334,
                    height: 278,
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Container(
                            width: 314,
                            height: 150,
                            child: Image(
                                image: NetworkImage(
                                    "$imgBaseUrl${snapshot.data!.data![index].id.toString()}/${snapshot.data!.data![index].mainImage.toString()}")),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            width: 120,
                            height: 30,
                            color: Colors.orange[700],
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.shopping_cart_outlined, color: Colors.white, size: 17,),
                                Text("Add to Cart", style: TextStyle(color: Colors.white, fontSize: 14),)
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                              '${snapshot.data!.data![index].productName.toString()}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '₹ ' +
                                    '${snapshot.data!.data![index].discountedPrice.toString()}',
                                style: const TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text('₹ ' +
                                  '${snapshot.data!.data![index].price.toString()}'),
                            ],
                          ),
                          Text(
                              '${snapshot.data!.data![index].brand.toString()}',
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  );
                });
          } else {
            return const Text('Loading');
          }
        },
      ),
    );
  }
}
