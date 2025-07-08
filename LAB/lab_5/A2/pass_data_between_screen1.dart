// WAP to pass data between two screens using Get.to().

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './pass_data_between_screen2.dart';

void main() {
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: PassDataBetweenScreen1Getx(),
  ));
}

class PassDataBetweenScreen1Getx extends StatelessWidget {
  const PassDataBetweenScreen1Getx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pass Data Between Screens using Getx"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => const PassDataBetweenScreen2Getx(), arguments: {
              "Name": "DHAIRYA DUDKIYA",
              "age": 19,
              "Enrollment No.": 23010101075,
            });
          },
          child: const Text("Go to Second Screen"),
        ),
      ),
    );
  }
}