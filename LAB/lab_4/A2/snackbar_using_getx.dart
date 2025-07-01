import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SnackbarUsingGetx extends StatelessWidget {
  SnackbarUsingGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GetX snackbar")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.showSnackbar(
              GetSnackBar(
                title: 'SnackBar using Getx',
                message: 'This is a sample message',
                backgroundColor: Colors.lightGreenAccent,
                duration: Duration(seconds: 3),
              )
            );
          },
          child: const Text("Show Dialog"),
        ),
      ),
    );
  }
}
