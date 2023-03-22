import 'package:flutter/material.dart';
import 'package:m1_s4_ucamp/product_item_card.dart';

class CardScrollWomanView extends StatefulWidget {
  const CardScrollWomanView({
    super.key,
    required this.counter,
  });
  final int counter;

  @override
  State<CardScrollWomanView> createState() => _CardScrollWomanViewState();
}

class _CardScrollWomanViewState extends State<CardScrollWomanView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        children: [
          ProductItemCard(
            imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzfQvwQ6dwslyO3hNY5JXUvQAAP8oTdRsDxw&usqp=CAU",
            price: "2000",
            description: "Hoodie purple",
            discount: "${widget.counter}",
          ),
          ProductItemCard(
            imageUrl:
                "https://i8.amplience.net/t/jpl/jd_product_list?plu=jd_644045_plc&qlt=85&exclusive=0&qlt=92&wid=320&hei=408&v=1&fmt=auto",
            price: "2000",
            description: "Hoodie Blue",
            discount: "${widget.counter}",
          ),
          ProductItemCard(
            imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5tfSz89c5mwJ6k4b1ECBTbJYzNmubNVI01g&usqp=CAU",
            price: "2000",
            description: "Hoodie Green",
            discount: "${widget.counter}",
          ),
          ProductItemCard(
            imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcbe42NXEim00fh_DhHIzk2LJD0bRs6Z_FiQ&usqp=CAU",
            price: "2000",
            description: "Hoodie Grey",
            discount: "${widget.counter}",
          ),
        ],
      ),
    );
  }
}
