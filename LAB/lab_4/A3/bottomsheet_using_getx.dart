import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomsheetUsingGetx extends StatelessWidget {
  const BottomsheetUsingGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BottomSheet Using Getx'
        ),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Get.bottomSheet(
            BottomSheet(onClosing: (){}, builder: (context){
              return ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index){
                  return ListTile(
                    onTap: (){
                      Get.back();
                    },
                    title: Text('Bottomsheet: ${index+1}'),
                  );
                },
              );
            }
            ),
          ).then((value){
            Get.snackbar('BottomSheet', 'Getx BottomSheet');
          });
          Future.delayed(const Duration(seconds: 3), () {
            if (Get.isBottomSheetOpen ?? false) {
              Get.back(); // Close bottom sheet if still open
            }
          });

        }, child: Text('Click me'))
      ),
    );
  }
}
