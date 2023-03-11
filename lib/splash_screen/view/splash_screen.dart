import 'package:flutter/material.dart';

import '../../app_util/app_style.dart';
import '../../home/view/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cblack,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
              ),
              const Center(
                child: Text(
                  "NAIVE",
                  style: TextStyle(
                      color: cYellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 70),
                ),
              ),
              const Text(
                "Explor the fashion trends",
                style: TextStyle(color: Colors.white),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                      child: Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: 20,
                        color: cblack,
                        fontWeight: FontWeight.w600),
                  )),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
