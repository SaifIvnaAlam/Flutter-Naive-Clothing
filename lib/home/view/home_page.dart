import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app_util/app_style.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List tshirtimages = [
    "https://m.media-amazon.com/images/I/91LAvBr8c-L._UY550_.jpg",
    "https://cdn.shopify.com/s/files/1/0154/7422/9302/products/mens_polo_shirt_black_600x.jpg?v=1638484181",
    "https://cdn.shopify.com/s/files/1/0154/7422/9302/products/tshirt_g_600x.jpg?v=1624341353"
        "https://roneck.com/wp-content/uploads/2020/07/lebanonblackpolo-1024x1024-600x600.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/51RchS4gLVL._SL1100_.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: const Center(
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://marketplace.canva.com/EAFLa5oOdAs/1/0/1600w/canva-brown-minimalist-fashion-facebook-cover-ZeANlEZonYg.jpg")),
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: cblack, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        FontAwesomeIcons.barsStaggered,
                        color: Colors.white,
                      ),
                      Text(
                        "Clothing",
                        style: TextStyle(
                            color: Colors.amber.shade400,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Electronics",
                        style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Mart",
                        style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Men",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: tshirtimages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(tshirtimages[index]),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
