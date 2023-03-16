import 'dart:math';

import 'package:flutter/material.dart';

class ProductItemCard extends StatefulWidget {
  const ProductItemCard(
      {super.key,
      required this.imageUrl,
      required this.price,
      this.discount,
      this.description});

  final String imageUrl;
  final String price;
  final String? discount;
  final String? description;

  @override
  State<ProductItemCard> createState() => _ProductItemCardState();
}

class _ProductItemCardState extends State<ProductItemCard> {
  Color backgroundColor = Color.fromARGB(255, 180, 13, 1);

  void randomColor() {
    setState(() {
      backgroundColor = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
          .withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        randomColor();
      },
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(widget.imageUrl),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            widget.description.toString(),
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.favorite_border),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 7),
                          child: Text(
                            '\$2000',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              width: 55,
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: backgroundColor),
              child: Center(
                child: Text(
                  "${widget.discount} %",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
