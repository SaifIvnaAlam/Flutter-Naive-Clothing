import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app_util/app_style.dart';
import '../domain/product_model.dart';
import 'widgets/product_card.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Productmodel products = Productmodel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
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
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: const Offset(0, 7), // changes position of shadow
                    ),
                  ], color: cblack, borderRadius: BorderRadius.circular(10)),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Best Seller",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                        Icon(
                          FontAwesomeIcons.angleDown,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: products.images.length,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        cost: products.productPrice[index].toString(),
                        image: products.images[index],
                        name: products.productName[index],
                      );
                    }),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Container(
                //       height: 150,
                //       width: 150,
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(20),
                //           image: DecorationImage(
                //             fit: BoxFit.cover,
                //             image: NetworkImage(
                //                 "https://t4.ftcdn.net/jpg/02/51/41/35/360_F_251413542_Hzw1f6NZHdbuBqBBRAmABnp7tlHNCKSJ.jpg"),
                //           )),
                //     ),
                //     SizedBox(
                //       width: 20,
                //     ),
                //     Container(
                //       height: 150,
                //       width: 150,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(20),
                //         image: DecorationImage(
                //           fit: BoxFit.cover,
                //           image: NetworkImage(
                //               "https://www.yoreoyster.com/wp-content/uploads/2020/10/khaadi-canada.jpg"),
                //         ),
                //       ),
                //     ),
                //   ],
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
