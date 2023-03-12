import 'package:flutter/material.dart';

class ClothingTab extends StatelessWidget {
  const ClothingTab({super.key, required this.tabName, required this.image});
  final String tabName;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20, top: 10),
          child: Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(image),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey.withOpacity(0.2),
                  spreadRadius: 4,
                  blurRadius: 10,
                  offset: const Offset(0, 4), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueGrey,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  tabName.toUpperCase(),
                  style: const TextStyle(
                      letterSpacing: 6,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(5.0, 5.0),
                            blurRadius: 8.0,
                            color: Colors.black),
                      ],
                      fontSize: 40),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
