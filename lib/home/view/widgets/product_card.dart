import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key, required this.cost, required this.image, required this.name});
  final String cost;
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(image),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(overflow: TextOverflow.fade, name),
        const SizedBox(
          height: 5,
        ),
        Container(
          color: Colors.black,
          child: Text(
            cost,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 40,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.amberAccent,
          ),
          child: Center(
            child: Text("Add to cart"),
          ),
        )
      ],
    );
  }
}
