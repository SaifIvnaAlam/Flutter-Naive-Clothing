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
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 25,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                width: 2,
                color: Colors.amberAccent,
              )),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Add to cart | ",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w400),
                ),
                Text(
                  "$cost ৳",
                  style: const TextStyle(),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
