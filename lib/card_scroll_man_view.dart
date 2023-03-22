import 'package:flutter/material.dart';
import 'package:m1_s4_ucamp/product_item_card.dart';

class CardScrollManView extends StatefulWidget {
  const CardScrollManView({
    super.key,
    required this.counter,
  });
  final int counter;

  @override
  State<CardScrollManView> createState() => _CardScrollManViewState();
}

class _CardScrollManViewState extends State<CardScrollManView> {
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
                "https://martinvalen.com/21977-large_default/men-s-oversized-signature-detail-beige-cordless-hoodie.jpg",
            price: "2000",
            description: "Hoodie purple",
            discount: "${widget.counter}",
          ),
          ProductItemCard(
            imageUrl:
                "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/0862a7d1-4f86-4500-a210-0a4cc398c55d/jordan-flight-heritage-fleece-sweatshirt-CWksF0.png",
            price: "2000",
            description: "Hoodie purple",
            discount: "${widget.counter}",
          ),
          ProductItemCard(
            imageUrl:
                "https://media.boohoo.com/i/boohoo/amm08755_khaki_xl/herr-khaki-plus---hoodie-i-tjockt-tyg/?w=900&qlt=default&fmt.jp2.qlt=70&fmt=auto&sm=fit",
            price: "2000",
            description: "Hoodie purple",
            discount: "${widget.counter}",
          ),
          ProductItemCard(
            imageUrl:
                "https://falabella.scene7.com/is/image/FalabellaCO/60837449?wid=500&hei=500&qlt=70",
            price: "2000",
            description: "Hoodie purple",
            discount: "${widget.counter}",
          ),
        ],
      ),
    );
  }
}
