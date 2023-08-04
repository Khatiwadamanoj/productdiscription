import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Product extends StatefulWidget {
  Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List<String> newList = ["APPLE", "BIKE", 'CAR', 'CYCLE', 'SHIP'];
  List<String> images = [
    'assets/images/apple.jpg',
    'assets/images/bike.jpg',
    'assets/images/car.jpg',
    'assets/images/cycle.jpg',
    'assets/images/ship.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Product'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider.builder(
                options: CarouselOptions(
                  height: 400,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
                itemCount: images.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                          child: Image.asset(images[itemIndex]),
                        )),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: newList.length,
                  itemBuilder: (context, int index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      width: 40,
                      height: 60,
                      color: Colors.black,
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.8,
                                      width: 300,
                                      child: Column(
                                        children: [
                                          Text(newList[index]),
                                          Image.asset(images[index]),
                                          Container(
                                            margin: EdgeInsets.all(30),
                                            child: Text(
                                              '!!! SALE !!! SALE !!! SALE !!!',
                                              style: TextStyle(
                                                  color: Colors.redAccent,
                                                  fontSize: 40,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            child: Text('only for RS 5'),
                                          )
                                        ],
                                      ));
                                });
                          },
                          child: Text(
                            newList[index],
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}
