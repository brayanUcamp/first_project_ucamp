import 'package:flutter/material.dart';
import 'package:m1_s4_ucamp/product_item_card.dart';

class CardScrollView extends StatefulWidget {
  const CardScrollView({super.key, required this.counter});
  final int counter;

  @override
  State<CardScrollView> createState() => _CardScrollViewState();
}

class _CardScrollViewState extends State<CardScrollView> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      padding: const EdgeInsets.all(10),
      children: [
        ProductItemCard(
            imageUrl:
                "https://pa.namshicdn.com/product/10/0O67K400PM/v6/1-zoom-desktop.jpg",
            price: "2000",
            description: "Hoodie purple",
            discount: "${widget.counter}"),
        ProductItemCard(
            imageUrl:
                "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/0862a7d1-4f86-4500-a210-0a4cc398c55d/jordan-flight-heritage-fleece-sweatshirt-CWksF0.png",
            price: "2000",
            description: "Hoodie purple",
            discount: "${widget.counter}"),
        ProductItemCard(
            imageUrl:
                "https://media.boohoo.com/i/boohoo/amm08755_khaki_xl/herr-khaki-plus---hoodie-i-tjockt-tyg/?w=900&qlt=default&fmt.jp2.qlt=70&fmt=auto&sm=fit",
            price: "2000",
            description: "Hoodie purple",
            discount: "${widget.counter}"),
        ProductItemCard(
            imageUrl:
                "https://falabella.scene7.com/is/image/FalabellaCO/60837449?wid=500&hei=500&qlt=70",
            price: "2000",
            description: "Hoodie purple",
            discount: "${widget.counter}"),
      ],
    );
  }
}
