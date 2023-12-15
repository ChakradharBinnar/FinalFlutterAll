import 'package:final_local_shouts/Body(HomePage)/ProductHighlightsScrollView/productHighlightsScrollview.dart';
import 'package:flutter/material.dart';

late ScrollController _scrollController;

class ProductHighlights extends StatefulWidget {
  const ProductHighlights({super.key});

  @override
  State<ProductHighlights> createState() => _ProductHighlightsState();
}

class _ProductHighlightsState extends State<ProductHighlights> {
  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Stack(
          children: [
            Container(
              height: 315,
              width: double.infinity,
              child: const ProductHighlightsScrollView(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: FloatingActionButton(
                        child: Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: Colors.red,
                        ),
                        backgroundColor: Colors.white,
                        hoverColor: const Color.fromARGB(255, 15, 35, 51),
                        elevation: 3,
                        shape: const BeveledRectangleBorder(),
                        onPressed: () {
                          _scrollController.animateTo(
                              _scrollController.offset - 100,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                        }),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    child: FloatingActionButton(
                        backgroundColor: Colors.white,
                        hoverColor: const Color.fromARGB(255, 15, 35, 51),
                        elevation: 3,
                        shape: const BeveledRectangleBorder(),
                        onPressed: () {
                          _scrollController.animateTo(
                              _scrollController.offset + 100,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.red,
                        )),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
